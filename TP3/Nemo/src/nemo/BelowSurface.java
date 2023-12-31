package nemo;

public class BelowSurface extends DepthNavigator {
    public BelowSurface(){
        profundidad = 1;
    }
    public DepthNavigator down() {
        return new Deep( profundidad + 1 , this );
    }
    public DepthNavigator up() {
        return new Surface();
    }
    public void lanzamientoDeCapsula() {}
    public boolean isSurface() {
        return true;
    }
}
