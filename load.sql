COPY public.ratings(rating_id, rating) FROM 'C:\Users\Prachi Patil\OneDrive - University at Buffalo\Desktop\Milestone2\data\Ratings.csv' DELIMITER ',' CSV HEADER;
COPY public.location(location_id, neighbourhood_group, neighbourhood, latitude, longitude) FROM 'C:\Users\Prachi Patil\OneDrive - University at Buffalo\Desktop\Milestone2\data\Location.csv' DELIMITER ',' CSV HEADER;
COPY public.host(host_id, host_name, license) FROM 'C:\Users\Prachi Patil\OneDrive - University at Buffalo\Desktop\Milestone2\data\Host.csv' DELIMITER ',' CSV HEADER;
COPY public.listing(id, host_id) FROM 'C:\Users\Prachi Patil\OneDrive - University at Buffalo\Desktop\Milestone2\data\Listing.csv' DELIMITER ',' CSV HEADER;
COPY public.availability(id, availability) FROM 'C:\Users\Prachi Patil\OneDrive - University at Buffalo\Desktop\Milestone2\data\Availability.csv' DELIMITER ',' CSV HEADER;
COPY public.price(price_id, price, location_id, rating_id) FROM 'C:\Users\Prachi Patil\OneDrive - University at Buffalo\Desktop\Milestone2\data\Price.xlsx' DELIMITER ',' CSV HEADER;
COPY public.room(room_id, room_type, bedrooms, beds, bath, price_id) FROM 'C:\Users\Prachi Patil\OneDrive - University at Buffalo\Desktop\Milestone2\data\Room.csv' DELIMITER ',' CSV HEADER;
COPY public.reviews(id, number_of_reviews, last_review, reviews_per_month, rating_id) FROM 'C:\Users\Prachi Patil\OneDrive - University at Buffalo\Desktop\Milestone2\data\Reviews.csv' DELIMITER ',' CSV HEADER;

