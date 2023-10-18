package nemo;

public class Deep extends Depth {
    public Deep(){
        profundidad = 2;
    }
    public Depth down() {
        profundidad++;
        return this;
    }
    public Depth up() {
        profundidad--;
        if (profundidad == 1) {
            return new BelowSurface();
        }
        return this;
    }

    public boolean IsSurface() {
        return false;
    }

    @Override
    public int actualDepth(int diferencial) {
        return profundidad + diferencial;
    }

    @Override
    public void lanzarCapsula() {
        throw new RuntimeException("No se puede liberar la capsula" );
    }


}
