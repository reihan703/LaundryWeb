/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.ModelEdit;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Ridho
 */
public class EditProfileController {
    public boolean update (ModelEdit model){
        try{
            String sql = "UPDATE login  SET Email=?, Password=?  WHERE id=?";
            
            Map<Integer, Object> map = new HashMap<>();
            map.put(1, model.getEmail());
            map.put(2, model.getPassword());
            map.put(3, model.getId());
            
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
