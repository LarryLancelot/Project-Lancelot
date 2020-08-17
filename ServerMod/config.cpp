class CfgPatches {
    class ServerMod {
        filename = "ServerMod.pbo";
        author = "Cjay";
    };
};

class CfgFunctions {
    class Database {
        tag = "SQL";
        class Master {
            file = "\ServerMod\Functions\SQL";
            class reqData{};
        };
    };
};