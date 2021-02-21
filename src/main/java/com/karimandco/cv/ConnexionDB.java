/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.karimandco.cv;

import com.mysql.jdbc.Connection;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author karim
 */
public class ConnexionDB {
    
    // Default uri connection : jdbc:mysql://<host_name.tld>:port/<database_name>, <user_name>, password
    
    private String connexionURI = "jdbc:mysql://";
    private Connection connexion;
    private Properties properties;
    
    private String hostname;
    private Integer port;
    private String database;
    private String username;
    private String password;

    public ConnexionDB() {
        FileInputStream config = null;
        File f = new File("src/main/java/com/karimandco/config/config.properties"); 
        
        try {
            
            config = new FileInputStream(f.getAbsolutePath());
            this.properties = new Properties();
            this.properties.load(config);
            
            hostname = this.properties.getProperty("hostname");
            port = Integer.parseInt(this.properties.getProperty("port")) > 0 ? Integer.parseInt(this.properties.getProperty("port")) : 3306;
            database = this.properties.getProperty("database");
            username = this.properties.getProperty("username");
            password = this.properties.getProperty("password");
        } catch (FileNotFoundException ex) {
            Logger.getLogger(ConnexionDB.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ConnexionDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void initConnexion(){
        this.connexionURI += hostname + ":" + port + "/" + database;
        try {
            this.connexion = (Connection)DriverManager.getConnection(this.connexionURI, username, password);
        } catch (SQLException ex) {
            Logger.getLogger(ConnexionDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public Connection getConnnexion(){
        if(this.connexion != null){
            return this.connexion;
        }
        return null;
    }
    
    public void getAllDataTable(String table){
        if(this.connexion != null){
            Statement req;
            ResultSet res;
            try {
                req = this.connexion.createStatement();
                res = req.executeQuery("SELECT * FROM " + table);
            } catch (SQLException ex) {
                Logger.getLogger(ConnexionDB.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    
}
