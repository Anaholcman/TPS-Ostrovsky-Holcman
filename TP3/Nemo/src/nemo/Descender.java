package nemo;

public class Descender extends Commands {
    public boolean isCommand ( char c ) {
        return c == 'd';
    }
    public void execute ( Nemo nemo ) {
        nemo.descender();
    }
}
