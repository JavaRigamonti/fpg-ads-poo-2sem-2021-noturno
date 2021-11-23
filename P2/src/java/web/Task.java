/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;

/**
 *
 * @author T-Gamer
 */
public class Task {
    
    public String title;
    public Integer id;
    public String user;
    
    public Task(String title, Integer id, String user){
        this.title = title;
        this.id = id;
        this.user = user;
    }

}
