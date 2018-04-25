package com.sf.skillTree;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by sf on 2017/8/18.
 * 在数据库中存储图结构及其一些相关的操作
 * 适应数据库为mysql数据库
 */
public class Map {
    /*
   * 用于创建一个新图
   * @param mapName 图名称
   * @param mapDescribe 图描述
   * @return 若创建成功，则返回有系统生成的图ID
   * 失败返回-1
   * */
    public int createMap(String mapName,String mapDescribe){
        int mapId=-1;
        /*
        * 在数据库中创建图*/
        return mapId;
    }
    /*
    *  向图中添加边对
    *  @param mapId 确定向哪个图中加入边
    *  @param startVertex 有向图起始顶点
    *  @param endVertex 有向图终止顶点
     * @return 执行结果
     * 0 执行成功*/
    public int addEdges(int mapId,int stareVertex,int endVertex){
        int result=0;
        return result;
    }
    /*
    * 查询某一个开始顶点的所有终止顶点*/
    public List getEndVertex(int startVertex){
        List endVertex=new ArrayList();
        /*
        * 查询终止顶点*/
        return endVertex;
    }
    public List getStartVertex(int endVertex){
        List startVertex=new ArrayList();
        /*
        * 查询起始顶点*/
        return startVertex;
    }
}
