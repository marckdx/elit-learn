package com.elit2.app.control;

import java.util.GregorianCalendar;

/**
 * @author Brunno
 */
public class utilidades {
    public String getSaudacao() {
        GregorianCalendar d = new GregorianCalendar();
        String msg;
        int hora = d.get(GregorianCalendar.HOUR_OF_DAY);
        if (hora >= 24 && hora <= 11) {
            msg = "Bom Dia, ";
            return msg;
        } else if (hora > 12 && hora <= 19) {
            msg = "Boa Tarde, ";
            return msg;
        } else if (hora > 19 && hora <= 23) {
            msg = "Boa Noite, ";
            return msg;
        } else {
            msg = "Olá, ";
            return msg;
        }
    }
}