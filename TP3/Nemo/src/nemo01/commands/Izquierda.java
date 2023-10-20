package nemo01.commands;

import nemo01.Nemo;

public class Izquierda extends Commands {
    public boolean isCommand(char c) {
        return c == 'l';
    }
    public void execute1(Nemo nemo) {
        nemo.direccion = nemo.direccion.left();
    }
    public void execute(Nemo nemo) {nemo.rotarIzquierda();}

}
