import spec.Language;
import spec.Library;

public class Client implements Paper {

    Library library = new Library("vueJS");
    Language language = new Language("KottlinJS");
    Programmer programmer;

    public void setProgrammer(Programmer programmer) {
        this.programmer = programmer;
    }


}
