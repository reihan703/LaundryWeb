/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import java.sql.Connection;

/**
 *
 * @author USER
 */
public class testKoneksi {
    public static void main(String[] args) {
    Connection con = null;
    con = Connectionn.dbConnect();
  }
}
