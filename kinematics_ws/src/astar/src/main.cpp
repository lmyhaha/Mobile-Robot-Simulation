#include <iostream>
#include <ros/ros.h>
#include <nav_msgs/OccupancyGrid.h>
#include <nav_msgs/Path.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Quaternion.h>
#include "Astar.h"
#include <vector>
#include <ctime>

using namespace cv;
using namespace std;
MapParamNode MapParam;
Mat Maptest;
clock_t start,endd, ct1, ct2;
bool startflag=false, endflag=false;
int mapheight, mapwidth;
int peng=2;
//
struct node{
    node *parent;
    float getH(node*);
    //f=g+h
    void setG(float);
    void setH(float);
    void setF(float);
    bool inopen;
    bool inclosed;
    int count;
    int x,y,v;
    float f,h,g;
};
float node::getH(node *goal){
    int Hx,Hy;
    Hx=abs(x - goal->x);
    Hy=abs(y - goal->y);
    return max(Hx, Hy);
}
void node::setG(float G){
    g=G;
}
void node::setH(float H){
    h=H;
}
void node::setF(float F){
    f=F;
}

static node GRID[4000][4000];

int gridbase[4000][4000];

void buildWorld() {
    //int a;
    for(int d=0;d<4000;++d) {
        for(int p=0;p<4000;++p) {
            GRID[d][p].x=d;
            GRID[d][p].y=p;
            GRID[d][p].inopen=false;
            GRID[d][p].inclosed=false;
            GRID[d][p].count=0;
            GRID[d][p].v=gridbase[d][p];
            if(gridbase[d][p]==255) {
                for(int i=d-peng;i<=d+peng;++i) {
                    for(int j=p-peng;j<=p+peng;++j) {
                        if(gridbase[i][j]==0) {GRID[d][p].v=1; break;}
                    }
                }
            }
        }
    }
    //for(int i=2010;i<2020;++i) {
    //    for(int j=2020;j<2040;++j) cout << GRID[i][j].v << '\t';
    //    cout << endl;
    //}
    //cout << "edge: " << a << endl;
}

class listType:public vector<node*> {
    public:
        void pushNode(node*);
};
void listType::pushNode(node *nptr) {
    if(empty()||nptr->f >= back()->f) {
        push_back(nptr);
    } else {
        for(auto it = begin(); it != end(); ++it) {
            if(nptr->f < (*it)->f) {
                insert(it, nptr);
                break;
            }
        }
    }
}

class playerType{
    public:
        vector<Point> getPath(int, node*, node*);
    private:
        listType closedlist;
        listType openlist;
        void getAdjacents(node*);
        void setpoint(node*, node*);
        void resetstart();
        void findGoal();
        vector<Point> printPath();
        void cleanpoint();
        node *adj[8];
        node *start;
        node *goal;
        int count;
        node *weistart;
};

vector<Point> playerType::getPath(int c, node *s, node *g) {
    count = c;
    //ct1=clock();
    vector<Point> path;
    //ct2=clock();
    //double t1=(double)(ct2-ct1)/CLOCKS_PER_SEC;
    //cout<<"t1:"<<t1<<endl;
    setpoint(s, g);
    //ct1=clock();
    //double t2=(double)(ct1-ct2)/CLOCKS_PER_SEC;
    //cout<<"t2:"<<t2<<endl;
    findGoal();
    //ct2=clock();
    //double t3=(double)(ct2-ct1)/CLOCKS_PER_SEC;
    //cout<<"t3:"<<t3<<endl;
    path = printPath();
    //ct1=clock();
    //double t4=(double)(ct1-ct2)/CLOCKS_PER_SEC;
    //cout<<"t4:"<<t4<<endl;
    cleanpoint();
    //ct2=clock();
    //double t5=(double)(ct2-ct1)/CLOCKS_PER_SEC;
    //cout<<"t5:"<<t5<<endl;
    return path;
}


void playerType::setpoint(node *s, node *g) {
    start = s;
    goal = g;
    resetstart();
    openlist.pushNode(weistart);
    weistart->count = count;
    weistart->inopen = true;
}

void playerType::resetstart() {
    weistart=start;
    if(GRID[start->x][start->y].v == 255) return;
    bool iniflag=false;
    int dirx=0, diry=0;
    while(GRID[weistart->x][weistart->y].v != 255) {
        dirx=0; diry=0;
        for(int i=weistart->x-peng;i<=weistart->x+peng;++i) {
            for(int j=weistart->y-peng;j<=weistart->y+peng;++j) {
                if(gridbase[i][j]==0) {dirx+=(weistart->x-i);diry+=(weistart->y-j);}
            }
        }
        if(dirx> 0)dirx= 1;
        if(dirx==0)dirx= 0;
        if(dirx< 0)dirx=-1;
        if(diry> 0)diry= 1;
        if(diry==0)diry= 0;
        if(diry< 0)diry=-1;
        GRID[weistart->x+dirx][weistart->y+diry].parent = weistart;
        weistart = &GRID[weistart->x+dirx][weistart->y+diry];
        cout << "nonono" << weistart->x+dirx << '\t' << weistart->y+diry << endl;
    }
}

void playerType::cleanpoint() {
    openlist.clear();
    closedlist.clear();
}

void playerType::getAdjacents(node *standon){
    int xx = standon->x;
    int yy = standon->y;
    //cout << "standon: " << xx << yy << endl;
    adj[0] = &GRID[xx+1][yy  ];
    adj[1] = &GRID[xx  ][yy+1];
    adj[2] = &GRID[xx-1][yy  ];
    adj[3] = &GRID[xx  ][yy-1];
    adj[4] = &GRID[xx+1][yy+1];
    adj[5] = &GRID[xx-1][yy-1];
    adj[6] = &GRID[xx-1][yy+1];
    adj[7] = &GRID[xx+1][yy-1];
}
void playerType::findGoal(){
    float ff,gg,hh;
    while(!openlist.empty()){
        node *standon=openlist.front();
        while(!standon->inopen) {
            openlist.erase(openlist.begin());
            standon=openlist.front();
        }
        getAdjacents(standon);
        for(int k=0;k<8;++k){
            gg = standon->g + 1;
            hh = adj[k]->getH(goal);
            ff = gg + hh;
            if(GRID[adj[k]->x][adj[k]->y].v != 255) continue;
            if((adj[k]->count==count)&&adj[k]->inopen) {
                if(adj[k]->g > gg){
                    adj[k]->g = gg;
                    adj[k]->f = ff;
                    adj[k]->parent=standon;
                    //openlist.erase(inopen);
                    openlist.pushNode(adj[k]);
                }
            } else if(!((adj[k]->count==count)&&(adj[k]->inclosed))){
                adj[k]->parent=standon;
                adj[k]->setG(gg);
                adj[k]->setH(hh);
                adj[k]->setF(ff);
                openlist.pushNode(adj[k]);
                adj[k]->inopen = true;
                adj[k]->count = count;
            }
        }
        if((standon->x==goal->x)&&(standon->y==goal->y)) break;
        closedlist.push_back(standon);
        standon->inclosed=true;
        standon->inopen=false;
        openlist.erase(openlist.begin());
        //break;
    }

}
vector<Point> playerType::printPath(){
    vector<Point> path;
    for(node *current=goal;current!=start;current=current->parent) {
        Point_<double> p(current->x, current->y);
        path.insert(path.begin(), p);
    }
    Point_<double> p(start->x, start->y);
    path.insert(path.begin(), p);
    return path;
}
//
void World2MapGrid(MapParamNode& MapParam, Point2d& src_point, Point& dst_point)
{
    Mat P_src = Mat(Vec2d(src_point.x, src_point.y), CV_64FC1);
    Mat P_dst = MapParam.Rotation.inv() * (P_src - MapParam.Translation);

    dst_point.x = round(P_dst.at<double>(0, 0));
    dst_point.y = MapParam.height - 1 - round(P_dst.at<double>(1, 0));
}
void MapGrid2world(MapParamNode& MapParam, Point& src_point, Point2d& dst_point)
{
    Mat P_src = Mat(Vec2d(src_point.x, MapParam.height - 1 - src_point.y), CV_64FC1);
    Mat P_dst = MapParam.Rotation * P_src + MapParam.Translation;

    dst_point.x = P_dst.at<double>(0, 0);
    dst_point.y = P_dst.at<double>(1, 0);
}

void MapCallback(const nav_msgs::OccupancyGrid& msg)
{

    // Get the parameters of map
    MapParam.resolution = msg.info.resolution;
    MapParam.height = msg.info.height;
    MapParam.width = msg.info.width;
    // The origin of the MapGrid is on the bottom left corner of the map
    MapParam.x = msg.info.origin.position.x;
    MapParam.y = msg.info.origin.position.y;


    // Calculate the pose of map with respect to the world of rviz
    double roll, pitch, yaw;
    geometry_msgs::Quaternion q = msg.info.origin.orientation;
    tf::Quaternion quat(q.x, q.y, q.z, q.w); // x, y, z, w
    tf::Matrix3x3(quat).getRPY(roll, pitch, yaw);
    double theta = yaw;

    //从rviz上所给定的起点和终点坐标是真实世界坐标系下的位置，需要转化为地图坐标下的表示
    //MapParam.Rotation MapParam.Translation 用于该变换
    MapParam.Rotation = Mat::zeros(2,2, CV_64FC1);
    MapParam.Rotation.at<double>(0, 0) = MapParam.resolution * cos(theta);
    MapParam.Rotation.at<double>(0, 1) = MapParam.resolution * sin(-theta);
    MapParam.Rotation.at<double>(1, 0) = MapParam.resolution * sin(theta);
    MapParam.Rotation.at<double>(1, 1) = MapParam.resolution * cos(theta);
    MapParam.Translation = Mat(Vec2d(MapParam.x, MapParam.y), CV_64FC1);

    cout<<"Map:"<<endl;
    cout<<"MapParam.height:"<<MapParam.height<<endl;
    cout<<"MapParam.width:"<<MapParam.width<<endl;
    mapheight = MapParam.height;
    mapwidth = MapParam.width;

    Mat Map(MapParam.height, MapParam.width, CV_8UC1);
    Maptest= Map;
    int GridFlag;
    for(int i = 0; i < MapParam.height; i++)
    {
        for(int j = 0; j < MapParam.width; j++)
        {
            GridFlag = msg.data[i * MapParam.width + j];
            GridFlag = (GridFlag < 0) ? 100 : GridFlag; // set Unknown to 0
            Map.at<uchar>(j,MapParam.height-i-1) = 255 - round(GridFlag * 255.0 / 100.0);
            gridbase[j][MapParam.height-i-1] = 255 - round(GridFlag * 255.0 / 100.0);
        }
    }
    buildWorld();
}

void StartPointCallback(const geometry_msgs::PoseWithCovarianceStamped& msg)
{
    Point2d src_point = Point2d(msg.pose.pose.position.x, msg.pose.pose.position.y);
    World2MapGrid(MapParam,src_point, MapParam.StartPoint);
    startflag = true;
    cout<<"StartPoint:"<<MapParam.StartPoint<<endl;
}

void TargetPointtCallback(const geometry_msgs::PoseStamped& msg)
{
    Point2d src_point = Point2d(msg.pose.position.x, msg.pose.position.y);
    World2MapGrid(MapParam,src_point, MapParam.TargetPoint);
    int p =Maptest.at<uchar>(MapParam.TargetPoint.x, MapParam.TargetPoint.y);
    cout<<"flag:"<<p<<endl;
    MapGrid2world(MapParam,MapParam.TargetPoint,src_point);
    endflag = true;
    cout<<"TargetPoint world:"<<src_point<<endl;
    cout<<"TargetPoint:"<<MapParam.TargetPoint<<endl;
}
void PathGrid2world(MapParamNode& MapParam, vector<Point>& PathList, nav_msgs::Path& plan_path)
{
    for(int i=0;i<PathList.size();i++)
    {
        Point2d dst_point;
        MapGrid2world(MapParam,PathList[i], dst_point);
        geometry_msgs::PoseStamped pose_stamped;
        pose_stamped.header.stamp = ros::Time::now();
        pose_stamped.header.frame_id = "map";
        pose_stamped.pose.position.x = dst_point.x;
        pose_stamped.pose.position.y = dst_point.y;
        pose_stamped.pose.position.z = 0;
        pose_stamped.pose.orientation.w = 1.0;
        plan_path.poses.push_back(pose_stamped);
    }
}

int main(int argc, char * argv[])
{
    ros::init(argc, argv, "astar");
    ros::NodeHandle n;


    geometry_msgs::PointStamped astar_step;

    // Subscribe topics
    ros::Subscriber Map_sub = n.subscribe("map", 10, MapCallback);
    ros::Subscriber StarPoint_sub = n.subscribe("move_base/NavfnROS/Astar/initialpose", 10, StartPointCallback);
    ros::Subscriber TargetPoint_sub = n.subscribe("move_base/NavfnROS/Astar/target", 10, TargetPointtCallback);
    cout << "start" << StarPoint_sub << endl;
    
    // Publisher topics
    ros::Publisher path_pub = n.advertise<nav_msgs::Path>("move_base/NavfnROS/nav_path", 10);
    ros::Rate loop_rate(20);
    nav_msgs::Path plan_path;

    vector<Point> PathList;
    playerType P;
    int count=0;
    

    while(ros::ok())
    {
        if((count==0 && startflag==true && endflag==true) || (count!=0 && (startflag==true || endflag==true))) {
            start=clock();
            node *Start=&GRID[MapParam.StartPoint.x][MapParam.StartPoint.y], *Goal=&GRID[MapParam.TargetPoint.x][MapParam.TargetPoint.y];
            PathList = P.getPath(count, Start, Goal);
            endd=clock();
            double endtime=(double)(endd-start)/CLOCKS_PER_SEC;
            cout<<"Total time: "<<endtime<<endl;
            cout << "Path length: " << PathList.size() << endl;
            //for (auto iter = PathList.cbegin(); iter != PathList.cend(); iter++) {
            //    cout << (*iter).x << '\t' << (*iter).y << endl;
            //}
            plan_path.poses.clear();
            PathGrid2world(MapParam, PathList, plan_path);
            plan_path.header.stamp = ros::Time::now();
            plan_path.header.frame_id = "map";
            path_pub.publish(plan_path);
                
            startflag=false;
            endflag=false;
            count++;
        }


        loop_rate.sleep();
        ros::spinOnce();
    }

    return 0;
}
