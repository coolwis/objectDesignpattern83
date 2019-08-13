import java.util.HashMap;
import java.util.Map;

public class Director {

    private Map<String, Paper> project = new HashMap<>();

    public void addProject(String name, Paper paper) {
        project.put(name, paper);
    }

    public void runProject(String name) {

        if (!project.containsKey(name)) {
            throw new RuntimeException("no project");
        }
        deploy(name, project.get(name).run());
//        Paper paper = project.get(name);
//        if (paper instanceof ServerClient) {
//            ServerClient project = (ServerClient) paper;
//            Programmer frontEnd = new FrontEnd<ServerClient>() {
//                @Override
//                void setData(ServerClient paper) {
//                    language = paper.frontEndLanguage;
//                }
//            };
//            Programmer backEnd = new BackEnd<ServerClient>() {
//                @Override
//                void setData(ServerClient paper) {
//                    server = paper.server;
//                    language = paper.backEndLanguage;
//                }
//            };
//            project.setFrontEndProgrammer(frontEnd);
//            project.setBackEndProgrammer(backEnd);
//            Program client = frontEnd.getProgram(project);
//            Program server = backEnd.getProgram(project);
//            deploy(name, client, server);
//        } else if (paper instanceof Client) {
//            Client project = (Client) paper;
//            Programmer frontEnd = new FrontEnd<Client>() {
//                @Override
//                void setData(Client paper) {
//                    library = paper.library;
//                    language = paper.language;
//                }
//            };
//            project.setProgrammer(frontEnd);
//            deploy(name, frontEnd.getProgram(project));
//        }
    }

    private void deploy(String name, Program... programs) {

    }
}
