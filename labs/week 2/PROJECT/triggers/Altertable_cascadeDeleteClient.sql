 ALTER TABLE Lesson
    ADD CONSTRAINT FK_Lesson_Client
    FOREIGN KEY (clientID) REFERENCES Client(clientID)
    ON DELETE CASCADE;
    GO;

ALTER TABLE Registration
ADD CONSTRAINT FK_Registration_Client
 FOREIGN KEY (clientID) REFERENCES Client(clientID)
    ON DELETE CASCADE;
    GO;

ALTER TABLE InterviewDetails 
ADD CONSTRAINT FK_Interview_Details
 FOREIGN KEY (clientID) REFERENCES Client(clientID)
    ON DELETE CASCADE;
    GO;

    
