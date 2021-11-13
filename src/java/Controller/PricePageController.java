/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.ModelPricePage;
import java.util.*;
/**
 *
 * @author USER
 */
public class PricePageController {
    public boolean create(ModelPricePage model){
        try{
            String sql = "insert into order_table1 (userID, alamat, hp, tanggal_ambil) values (?,?,?,?)";
            
            Map<Integer, Object> map = new HashMap<>();
            map.put(1, model.getId());
            map.put(2, model.getAlamat());
            map.put(3, model.getTelp());
            map.put(4, model.getTanggal());
            PricePageMainController mc = new PricePageMainController();
            boolean res = mc.preparedStatement(map, sql);
            return res;
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return false;
        }
    }
    
}
