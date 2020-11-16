DROP table candidats cascade
constraint;
CREATE TABLE candidats
(
CIN_candidat integer constraint
pk_candidats PRIMARY KEY, 
NomCandidat varchar(15),
PrenomCandidat varchar(15), 
DateN date, 
Niveau varchar(15), 
Nationnalite varchar(15)
);

DROP table FORMATIONS cascade
constraint;
CREATE TABLE FORMATIONS
(
 NomFormation varchar(50) constraint pk_formations PRIMARY KEY,
 Description varchar(30),
 Duree integer,
 Prix integer 
);

DROP table SESSIONS cascade
constraint;
CREATE TABLE SESSIONS 
(
NomFormation varchar(50) CONSTRAINT FK_FORMATIONS REFERENCES FORMATIONS(NomFormation),
IdSession varchar(30)constraint pk_session PRIMARY KEY,
 DateDebutSession Date,
 NomFormateur varchar(30)  
);
DROP table participationst cascade
constraint;
create table participationst
(
idcandidat constraint fk_part_cand REFERENCES CANDIDATS(CIN_candidat),
idSessions constraint fk_sess_part  REFERENCES SESSIONS(IdSession),
constraint pk_part primary key
(idcandidat,idSessions)
);
select cosntraint_name constraint_type from formations;