import spec.Language;
import spec.Library;

public class FrontEnd implements Programmer{
    private Language language;
    private Library library;

    @Override
    public Program makeProgram(Paper paper) {
        paper.setData(this);
        return makeFrontEndProgram();
    }

    private Program makeFrontEndProgram() {
        return new Program();
    }

    public void setLibrary(Library library) {
        this.library = library;
    }

    public void setLanguage(Language language) {
        this.language = language;
    }
}
