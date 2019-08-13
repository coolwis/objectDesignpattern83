import spec.Language;
import spec.Library;

public abstract class FrontEnd<T extends Paper> extends Programmer<T>{
    protected Language language;
    protected Library library;

    @Override
    Program makeProgram() {
        return new Program();
    }
}
