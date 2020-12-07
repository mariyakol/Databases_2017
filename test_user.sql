CREATE TABLE auto_personnel
( auto_personnel_id number (*,0) NOT NULL,
first_name varchar2(20) NOT NULL,
last_name varchar2(20) NOT NULL,
pather_name varchar2(20) NOT NULL,
CONSTRAINT auto_personnel_pk PRIMARY KEY (auto_personnel_id)
);

CREATE TABLE "auto"
( auto_id number(*,0) NOT NULL,
"num" varchar2(20) NOT NULL,
color varchar(20) NOT NULL,
"mark" varchar2(20) NOT NULL,
auto_personnel_id number (*,0) NOT NULL,
CONSTRAINT auto_pk PRIMARY KEY (auto_id),
CONSTRAINT fk_auto_personnel FOREIGN KEY (auto_personnel_id) REFERENCES auto_personnel(auto_personnel_id)
);

CREATE TABLE routes 
( routes_id number(*,0) NOT NULL, 
"name" varchar2(50) NOT NULL,
CONSTRAINT routes_pk PRIMARY KEY(routes_id)
);

CREATE TABLE journal 
( journal_id number (*,0) NOT NULL,
time_out timestamp(3) NOT NULL,
time_in timestamp(3) NOT NULL,
auto_id number(*,0) NOT NULL,
routes_id number(*,0) NOT NULL, 
CONSTRAINT journal_pk PRIMARY KEY(journal_id),
CONSTRAINT fk_auto FOREIGN KEY (auto_id) REFERENCES "auto"(auto_id),
CONSTRAINT fk_routes FOREIGN KEY (routes_id) REFERENCES routes(routes_id)
);


