create table item_definition (
  id int generated always as identity unique not null, 
  definitionName varchar(80) not null
);

create table recipe (
  id int generated always as identity unique not null, 
  recipeName varchar(80)
);

create table recipe_item (
  id int generated always as identity unique not null, 
  recipeId int references recipe (id) not null,
  itemType int references item_definition (id) not null, 
  itemName varchar(80)
);

create table recipe_instructions (
  id int generated always as identity unique not null, 
  recipeId int references recipe (id) not null,
  ordering int not null, 
  instructionText varchar(300)
);

create table hooks (
  id int generated always as identity unique not null,
  hookSize int not null, 
  hookType varchar(30) not null, 
  referenceNumber varchar(20),
  hookName varchar(80) not null,
  quantity real not null, 
  price real not null, 
  brand varchar(80) not null, 
  hookDescription varchar(200) null, 
  refDefinition int references item_definition (id) null
);

create table fluffy (
  id int generated always as identity unique not null, 
  fluffyType varchar(30) not null, 
  fluffySpecies varchar(30) not null, 
  fluffyColor varchar(30) not null, 
  fluffyPart varchar(30) not null, 
  fluffyName varchar(80) not null,
  quantity real not null, 
  price real not null, 
  brand varchar(80) not null, 
  fluffyDescription varchar(200) null, 
  refDefinition int references item_definition (id) null
);

create table threads (
  id int generated always as identity unique not null, 
  threadType varchar(30) not null, 
  threadColor varchar(30) not null, 
  threadSize real not null, 
  threadName varchar(80) not null,
  quantity real not null, 
  price real not null, 
  brand varchar(80) not null, 
  threadDescription varchar(200) null, 
  refDefinition int references item_definition (id) null
);

create table tools (
  id int generated always as identity unique not null, 
  toolSize real not null, 
  toolName varchar(80) not null,
  quantity real not null, 
  price real not null, 
  brand varchar(80) not null, 
  threadDescription varchar(200) null
);

create table misc (
  id int generated always as identity unique not null, 
  miscType varchar(80) not null, 
  miscColor varchar(30) not null, 
  miscSize real not null, 
  miscStyle varchar(30) not null, 
  miscName varchar(80) not null,
  quantity real not null, 
  quantityType real not null, 
  price real not null, 
  brand varchar(80) not null, 
  miscDescription varchar(200) null, 
  refDefinition int references item_definition (id) null
);
