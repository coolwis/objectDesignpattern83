import spec.Language;

public class BackEnd  implements Programmer{
    private Server server;
    private Language language;

    @Override
    public Program makeProgram(Paper paper) {
        paper.setData(this);
//        if(paper instanceof ServerClient) {
//            ServerClient pa = (ServerClient) paper;
//            this.server = pa.server;
//            this.language = pa.backEndLanguage;
//        }
        return makeBackEndProgram();
    }

    private Program makeBackEndProgram() {
        return new Program();
    }

    public void setLanguage(Language backEndLanguage) {
    }

    public void setServer(Server server) {
    }
}
