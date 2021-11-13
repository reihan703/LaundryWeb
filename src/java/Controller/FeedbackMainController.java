/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Config.Connectionn;
import java.sql.*;
import java.util.Map;
    
/**
 *
 * @author USER
 */
public class FeedbackMainController {
    public boolean preparedStatement(Map<Integer, Object> map, String sql){
        try{
            Connection conn = Connectionn.dbConnect();
            PreparedStatement ps = conn.prepareStatement(sql);
            
            for (Map.Entry<Integer, Object> entry : map.entrySet()){
                ps.setString(entry.getKey(), entry.getValue().toString());
            }
            
            int rows = ps.executeUpdate();
            conn.close();
            return rows !=0;
            
        }
        catch (SQLException e){
            System.out.println(e);
        }
        return preparedStatement(map, sql);
    }
}
