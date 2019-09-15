/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package basic;

import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author shark
 */
public class generate_otp {

    public int generatePin() throws Exception {
        Random generator = new Random();
        generator.setSeed(System.currentTimeMillis());

        int num = generator.nextInt(99999) + 99999;
        if (num < 100000 || num > 999999) {
            num = generator.nextInt(99999) + 99999;
            if (num < 100000 || num > 999999) {
                throw new Exception("Unable to generate PIN at this time..");
            }
        }
        return num;
    }
    public static void main(String[] args) {
        try {
            generate_otp otp=new generate_otp();
            
            String msg="Hello Your Otp For Email Verification Is PMC-"+otp.generatePin();
            mailclass mc=new mailclass("shardulrane4@gmail.com", msg);
        } catch (Exception ex) {
            Logger.getLogger(generate_otp.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
