-- Modelo de Dados para o projeto de e-commerce levando em consideração o banco de dados Oracle para criação das tabelas.
create table customers (
    customer_id integer,
    first_name varchar2(50),
    last_name varchar2(50),
    email varchar2(100) unique,
    phone varchar2(15),
    street varchar2(100),
    city varchar2(50),
    state varchar2(50),
    zip_code varchar2(10)
);
create table staffs (
    staff_id integer,
    first_name varchar2(50),
    last_name varchar2(50),
    active char(1) default 'Y',
    store_id integer,
    manager_id integer,
    email varchar2(100)
);
create table orders (
    order_id integer,
    customer_id integer,
    order_status varchar(20),
    order_date date default sysdate,
    required_date date
    shipped_date date,
    store_id integer,
    staff_id integer
);

create table stores (
    store_id integer,
    store_name varchar(100),
    phone varchar(15),
    address varchar(100),   
    city varchar(50),
    state varchar(50),
    zip_code varchar(10)
);
create table products (
    product_id integer,
    product_name varchar(100),
    brand_id integer,
    category_id integer,
    model_year integer,
    list_price number(10, 2)
);
create table order_items (
    order_id integer,
    item_id integer,
    product_id integer,
    quantity integer,
    list_price number(10, 2),
    discount number(10, 2)
);
creeate table categories (
    category_id integer,
    category_name varchar(100)
);
create table stocks (
    stock_id integer,
    product_id integer,
    quantity integer
);
create table brands (
    brand_id integer,
    brand_name varchar(100)
);
-- pk constraints
alter table customers
    add constraint pk_customer primary key (customer_id);

alter table orders
    add constraint pk_order primary key (order_id);

alter table stores
    add constraint pk_store primary key (store_id); 

alter table products
    add constraint pk_product primary key (product_id);

alter table order_items
    add constraint pk_order_item primary key (order_id, item_id);

alter table categories
    add constraint pk_category primary key (category_id);

alter table stocks
    add constraint pk_stock primary key (stock_id);

alter table brands
    add constraint pk_brand primary key (brand_id);

-- unique constraints
alter table customers
    add constraint uq_email unique (email);                 

-- fk constraints
alter table orders
    add constraint fk_customer
    foreign key (customer_id) references customers(customer_id);    
alter table order_items
    add constraint fk_order
    foreign key (order_id) references orders(order_id);
alter table order_items
    add constraint fk_product
    foreign key (product_id) references products(product_id);
alter table stocks
    add constraint fk_product_stock
    foreign key (product_id) references products(product_id);
alter table products
    add constraint fk_category
    foreign key (category_id) references categories(category_id);
alter table products    
    add constraint fk_brand
    foreign key (brand_id) references brands(brand_id);


