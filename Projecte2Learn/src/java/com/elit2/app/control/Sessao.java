package com.elit2.app.control;

import com.elit2.app.model.Aluno;

public class Sessao{  
   private static Sessao instance = null;  
   private Aluno usuario;  
  
   private Sessao(){  
   }  
  
   public void setUsuario(Aluno usuario){  
      this.usuario = usuario;  
   }  
  
   public Aluno getUsuario(){  
       return usuario;  
   }  
   public static Sessao getInstance(){  
         if(instance == null){  
               instance = new Sessao();  
         }  
        return instance;  
   }  
}   