/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.ModelFeedback;
import java.util.*;
/**
 *
 * @author USER
 */
public class FeedbackController {
    public boolean create(ModelFeedback model){
        try{
            String sql = "insert into feedback (nama, email, message) values (?,?,?)";
            
            Map<Integer, Object> map = new HashMap<>();
            map.put(1, model.getName());
            map.put(2, model.getEmail());
            map.put(3, model.getMessage());
            FeedbackMainController mc = new FeedbackMainController();
            boolean res = mc.preparedStatement(map, sql);
            return res;
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return false;
        }
    }
    
}
