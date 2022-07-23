CREATE DATABASE catalog_things_db;

CREATE TABLE books (
    id INT GENERATED ALWAYS AS IDENTITY
    genre_id
    author_id
    source_id
    label_id 
    publish_date DATE
    archived BOOLEAN
    publisher VARCHAR(190)
    cover_state VARCHAR(190)

    CONSTRAINT fk_items_labels
      FOREIGN KEY(item_label_id) 
	    REFERENCES items_labels(id)

    CONSTRAINT fk_items_labels
      FOREIGN KEY(item_label_id) 
	    REFERENCES items_labels(id)

    CONSTRAINT fk_items_labels
      FOREIGN KEY(item_label_id) 
	    REFERENCES items_labels(id)

    CONSTRAINT fk_items_labels
      FOREIGN KEY(item_label_id) 
	    REFERENCES items_labels(id)        

    PRIMARY KEY (id)
);

CREATE TABLE labels (
    id INT GENERATED ALWAYS AS IDENTITY
    title VARCHAR(190)
    color VARCHAR(190)
    item_label_id INT

    CONSTRAINT fk_items_labels
      FOREIGN KEY(item_label_id) 
	    REFERENCES items_labels(id)
);

