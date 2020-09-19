

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('035b1a8e-21df-4b56-bdf3-02f140f20e2d', 'My First Haskell Post', 'I am implementing a blog in Haskell using the IHP framework, just to see if I can.', '2020-08-24 19:26:28.82929+03');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('3a8152e8-83ac-41d9-93b8-a584b47d7ad6', 'My Second Haskell Post', 'It is the second one', '2020-08-24 19:26:28.830353+03');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('51bf2c25-0260-47c5-9a83-a0a4eb719465', 'My Third Haskell post', 'It should have a time stamp!', '2020-08-24 19:37:38.106112+03');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('d35d725e-2972-46e6-afbe-cd20f34a5254', 'Post with markdown', 'Trying **markdown**,  _does it work_?', '2020-09-12 15:04:15.466188+03');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('c1fad90b-ed0d-4b31-9021-6eaed3b8611f', 'd35d725e-2972-46e6-afbe-cd20f34a5254', 'Me', 'My first comment **in bold**');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('5e38334f-3c8e-4be7-b4f5-53df3bab9fe6', 'd35d725e-2972-46e6-afbe-cd20f34a5254', 'Me', 'Second comment _in italic_');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


