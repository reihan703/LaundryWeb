/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.ModelSignUp;
import java.util.*;
/**
 *
 * @author USER
 */
public class SignUpController {
    public boolean create(ModelSignUp model){
        try{
            String sql = "insert into login (First_Name, Last_Name, Email, Password) values (?,?,?,?)";
            
            Map<Integer, Object> map = new HashMap<>();
            map.put(1, model.getFname());
            map.put(2, model.getLname());
            map.put(3, model.getEmail());
            map.put(4, model.getPassword());
            SignUpMainController mc = new SignUpMainController();
            boolean res = mc.preparedStatement(map, sql);
            return res;
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return false;
        }
    }
    
}
