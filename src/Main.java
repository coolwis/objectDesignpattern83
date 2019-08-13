public class Main {

    public static void main(String[] args) {

        Director director = new Director();
        director.addProject("여행사", new Client() {
            @Override
            public Program[] run() {
                FrontEnd frontEnd = new FrontEnd<Client>() {
                    @Override
                    void setData(Client paper) {
                        library = paper.library;
                        language = paper.language;
                    }
                };
                programmer = frontEnd;
//                setProgrammer(frontEnd);
                return new Program[]{
                        frontEnd.getProgram(this)
                };
            }
        });
        director.runProject("여행사");


        director.addProject("은행 리뉴얼", new ServerClient() {
            @Override
            public Program[] run() {
                Programmer fronEnd = new FrontEnd<ServerClient>() {
                    @Override
                    void setData(ServerClient paper) {
                        language = paper.frontEndLanguage;

                    }
                };
                Programmer backEnd = new BackEnd<ServerClient>() {
                    @Override
                    void setData(ServerClient paper) {
                        server = paper.server;
                        language = paper.backEndLanguage;
                    }
                };
                frontEndProgrammer = fronEnd;
                backEndProgrammer = backEnd;

                return new Program[]{
                        fronEnd.getProgram(this),
                        backEnd.getProgram(this)
                };
            }
        });
        director.runProject("리뉴얼");
    }
}
