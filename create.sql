CREATE TABLE public.ratings (
    rating_id integer PRIMARY KEY,
    rating character varying(50)
);

CREATE TABLE public.location (
    location_id double precision PRIMARY KEY,
    neighbourhood_group character varying,
    neighbourhood character varying,
    latitude double precision,
    longitude double precision
);

CREATE TABLE public.price (
    price_id integer PRIMARY KEY,
    price integer,
    location_id double precision,
    rating_id integer,
    FOREIGN KEY (location_id) REFERENCES public.location (location_id),
    FOREIGN KEY (rating_id) REFERENCES public.ratings (rating_id)
);

CREATE TABLE public.host (
    host_id double precision PRIMARY KEY,
    host_name character varying(50),
    license character varying(50)
);

CREATE TABLE public.listing (
    id double precision PRIMARY KEY,
    host_id double precision,
    FOREIGN KEY (host_id) REFERENCES public.host (host_id)
);


CREATE TABLE public.availability (
    id double precision PRIMARY KEY,
    availability character varying(50),
    FOREIGN KEY (id) REFERENCES public.listing (id)
);


CREATE TABLE public.room (
    room_id integer PRIMARY KEY,
    room_type character varying,
    bedrooms integer,
    beds integer,
    bath double precision,
    price_id integer,
    FOREIGN KEY (price_id) REFERENCES public.price (price_id)
);

CREATE TABLE public.reviews (
    id double precision,
    number_of_reviews integer,
    last_review character varying(50),
    reviews_per_month character varying(50),
    rating_id integer,
    PRIMARY KEY (id),
    FOREIGN KEY (id) REFERENCES public.listing (id),
    FOREIGN KEY (rating_id) REFERENCES public.ratings (rating_id)
);
