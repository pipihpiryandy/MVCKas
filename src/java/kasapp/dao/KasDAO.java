/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kasapp.dao;

import java.util.List;
import kasapp.model.Kas;

/**
 *
 * @author piryandyp
 */
public interface KasDAO {
    List<Kas> get();
    
    Kas getSinggle(int id);
    
    boolean save(Kas kas);
    
    boolean delete(int id);
    
    boolean update(Kas kas);
}
