const sqlite = require('sqlite-async');

sqlite.open('feedback.db').then((database) => db = database);

function migrate() {
    return this.db.exec(`
        DROP TABLE IF EXISTS feedback;

        CREATE TABLE IF NOT EXISTS feedback (
            id         INTEGER      NOT NULL PRIMARY KEY AUTOINCREMENT,
            comment  VARCHAR(255) NOT NULL,
            created_at TIMESTAMP    DEFAULT CURRENT_TIMESTAMP
        );

        INSERT INTO feedback (comment) VALUES ('Issue #256 is the best issue so far. Keep up the good work.');
        INSERT INTO feedback (comment) VALUES ('Articles could be better. The memes are not very realistic.');
        INSERT INTO feedback (comment) VALUES ('This article is very specist. Humans are better than that.');
    `);
}