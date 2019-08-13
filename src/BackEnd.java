import spec.Language;

public abstract class BackEnd<T extends Paper> extends Programmer<T>{

    protected Server server;
    protected Language language;

    @Override
    Program makeProgram() {
        return new Program();
    }
}
