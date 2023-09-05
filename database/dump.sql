--
-- PostgreSQL database dump
--

-- Dumped from database version 13.11 (Debian 13.11-1.pgdg120+1)
-- Dumped by pg_dump version 13.11 (Debian 13.11-1.pgdg120+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: adonis_schema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.adonis_schema (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    batch integer NOT NULL,
    migration_time timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.adonis_schema OWNER TO postgres;

--
-- Name: adonis_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.adonis_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adonis_schema_id_seq OWNER TO postgres;

--
-- Name: adonis_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.adonis_schema_id_seq OWNED BY public.adonis_schema.id;


--
-- Name: adonis_schema_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.adonis_schema_versions (
    version integer NOT NULL
);


ALTER TABLE public.adonis_schema_versions OWNER TO postgres;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    post_id integer,
    name character varying(255),
    content text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    user_id integer,
    public boolean DEFAULT false,
    title character varying(255),
    image character varying(255),
    content text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    active boolean DEFAULT true,
    admin boolean DEFAULT false,
    first_name character varying(255),
    last_name character varying(255),
    email character varying(255),
    password character varying(255),
    bio text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: adonis_schema id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adonis_schema ALTER COLUMN id SET DEFAULT nextval('public.adonis_schema_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: adonis_schema; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.adonis_schema VALUES (19, 'database/migrations/1691686975291_users', 1, '2023-08-14 14:22:14.741865+00');
INSERT INTO public.adonis_schema VALUES (20, 'database/migrations/1691686988107_posts', 1, '2023-08-14 14:22:14.762315+00');
INSERT INTO public.adonis_schema VALUES (21, 'database/migrations/1691686991764_comments', 1, '2023-08-14 14:22:14.769686+00');


--
-- Data for Name: adonis_schema_versions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.adonis_schema_versions VALUES (2);


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.comments VALUES (1, 1, 'SparklingIdeas', 'Great introduction to SQL!', '2023-08-14 14:22:23.107+00', '2023-08-14 14:22:23.107+00');
INSERT INTO public.comments VALUES (2, 2, 'Wanderlust_Chronicles123', 'I love the tips in this article!', '2023-08-14 14:22:23.109+00', '2023-08-14 14:22:23.109+00');
INSERT INTO public.comments VALUES (3, 3, 'TechTalesHub', 'JavaScript is my favorite language!', '2023-08-14 14:22:23.11+00', '2023-08-14 14:22:23.11+00');
INSERT INTO public.comments VALUES (4, 4, 'Serene_Reflections', 'Cloud computing is changing the game!', '2023-08-14 14:22:23.112+00', '2023-08-14 14:22:23.112+00');
INSERT INTO public.comments VALUES (5, 5, 'culinary_dventures', 'Time management is something we all struggle with.', '2023-08-14 14:22:23.113+00', '2023-08-14 14:22:23.113+00');


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.posts VALUES (1, 1, true, 'Introduction to SQL', 'information-1641937_1920.jpg', '**Introduction to SQL: Unveiling the Power of Database Management**

In the digital age, where information is paramount and data rules supreme, the importance of efficient data management cannot be overstated. Enter SQL, a ubiquitous language that empowers developers and businesses to manage, retrieve, and manipulate data stored in relational databases. Whether you''re an aspiring developer or a curious soul seeking to unravel the mysteries of database management, this journey into the realm of SQL will be your guiding light.

**What is SQL?**

SQL, which stands for Structured Query Language, is a domain-specific language used to interact with relational database management systems (RDBMS). It serves as a bridge between humans and machines, enabling users to communicate their data-related requests and commands to the database.

**Why SQL Matters**

In the digital landscape, data is the backbone of decision-making. SQL enables efficient data manipulation and retrieval, allowing you to extract valuable insights from massive datasets. It forms the core of various applications, from e-commerce platforms managing inventory to social media networks handling user interactions.

**Key Concepts**

1. **Database:** At the heart of SQL lies the database, a structured collection of data organized into tables, each containing rows and columns.

2. **Tables:** Think of tables as spreadsheets. They consist of columns (fields) that define the types of data stored and rows (records) containing the actual data.

3. **Queries:** SQL''s real power shines through queries. These are statements that allow you to retrieve, manipulate, and analyze data from databases. For example, fetching a list of products with their prices or counting the number of registered users.

4. **CRUD Operations:** SQL revolves around CRUD—Create, Read, Update, and Delete. These operations form the foundation of data management. You can create new records, read existing ones, update data, and delete unnecessary entries.

**Basic SQL Commands**

1. **SELECT:** The SELECT statement is your window into the data. It retrieves specific columns or entire rows from a table based on your criteria. For instance:
  ```sql
  SELECT name, age FROM users WHERE country = ''USA'';
  ```

2. **INSERT:** The INSERT command lets you add new data to a table:
  ```sql
  INSERT INTO products (name, price) VALUES (''Laptop'', 999);
  ```

3. **UPDATE:** When data needs modification, use the UPDATE statement:
  ```sql
  UPDATE employees SET salary = 60000 WHERE department = ''IT'';
  ```

4. **DELETE:** The DELETE command removes unwanted data:
  ```sql
  DELETE FROM orders WHERE status = ''cancelled'';
  ```

**Advanced SQL Concepts**

1. **Joins:** Joins allow you to combine data from multiple tables. Common types include INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN.

2. **Aggregation:** Aggregation functions like SUM, AVG, COUNT, MIN, and MAX enable you to perform calculations on groups of data.

3. **Subqueries:** Subqueries are queries embedded within other queries, enhancing your ability to retrieve complex data.

**Conclusion**

SQL is a pivotal tool that empowers developers, analysts, and businesses to harness the potential of their data. With SQL, you possess the key to unlocking insights, optimizing operations, and driving informed decision-making. As you delve deeper into this world, you''ll uncover the limitless possibilities that emerge when you master the language that bridges the gap between data and wisdom. So, whether you''re embarking on a development journey or seeking to enhance your analytical prowess, SQL is your passport to a world of data-driven excellence.
        ', '2023-08-14 14:22:23.089+00', '2023-08-14 15:02:49.309+00');
INSERT INTO public.posts VALUES (2, 2, true, 'Healthy Habits for a Balanced Life', 'hands-5086503_1920.jpg', '**Healthy Habits for a Balanced Life: Nurturing Your Mind, Body, and Soul**

In the midst of our fast-paced lives, achieving balance seems like an elusive goal. However, the path to a balanced life is paved with small, sustainable habits that nourish your mind, body, and soul. Embracing these habits can lead to a life where wellness and contentment coexist harmoniously.

**1. Prioritize Sleep**

In a world that glorifies productivity, sleep often takes a backseat. Yet, quality sleep is vital for overall well-being. Establish a consistent sleep schedule, create a calming bedtime routine, and ensure your sleep environment is conducive to rest. Adequate sleep rejuvenates your body, enhances cognitive function, and sets the tone for a productive day ahead.

**2. Nourish Your Body**

Fueling your body with nutritious foods is essential for vitality. Adopt a balanced diet rich in whole grains, lean proteins, fruits, vegetables, and healthy fats. Stay hydrated, listen to your body''s hunger cues, and avoid restrictive diets. Remember, eating is not just about sustenance—it''s an opportunity to nourish and nurture yourself.

**3. Stay Active**

Regular physical activity is a cornerstone of a balanced life. Find forms of exercise that you genuinely enjoy, whether it''s jogging, yoga, dancing, or hiking. Aim for at least 30 minutes of moderate activity most days of the week. Exercise not only improves physical health but also boosts mood, reduces stress, and enhances cognitive function.

**4. Cultivate Mindfulness**

In a world of constant distractions, mindfulness offers a way to anchor yourself in the present moment. Practice meditation, deep breathing, or simply take a few moments each day to observe your surroundings without judgment. Mindfulness cultivates self-awareness, reduces stress, and enhances your ability to cope with life''s challenges.

**5. Foster Meaningful Relationships**

Human connections are a cornerstone of well-being. Nurture relationships that bring positivity and support to your life. Spend quality time with loved ones, engage in meaningful conversations, and practice active listening. Meaningful relationships provide emotional nourishment and a sense of belonging.

**6. Limit Screen Time**

While technology has transformed our lives, excessive screen time can negatively impact your well-being. Set boundaries for screen usage, especially before bedtime. Dedicate time to activities that don''t involve screens, such as reading, crafting, or spending time outdoors.

**7. Practice Gratitude**

Cultivating gratitude shifts your focus from what''s lacking to what''s abundant in your life. Start a gratitude journal, where you jot down three things you''re grateful for each day. This simple practice fosters a positive outlook, reduces stress, and enhances overall happiness.

**8. Embrace Rest and Relaxation**

Amid life''s demands, rest and relaxation are often overlooked. Schedule moments of rest, whether it''s taking a leisurely bath, enjoying a cup of tea, or simply sitting in silence. Prioritizing downtime rejuvenates your mind and allows you to recharge.

**9. Pursue Personal Growth**

Learning and growth contribute to a sense of fulfillment. Engage in activities that challenge you intellectually, whether it''s learning a new skill, reading diverse books, or attending workshops. Personal growth fosters self-confidence and empowers you to embrace new opportunities.

**10. Practice Self-Compassion**

Be kind to yourself, just as you would to a friend. Treat yourself with the same level of understanding and patience that you extend to others. Embrace imperfections, celebrate achievements, and acknowledge that self-care is not selfish—it''s essential for your well-being.

In the pursuit of a balanced life, remember that perfection is not the goal. It''s about progress, self-compassion, and a commitment to fostering habits that promote holistic wellness. By nurturing your mind, body, and soul through these healthy habits, you''re creating a foundation for a life that thrives in harmony.
        ', '2023-08-14 14:22:23.093+00', '2023-08-14 15:02:49.312+00');
INSERT INTO public.posts VALUES (3, 3, true, 'Getting Started with JavaScript', 'javascript-4523100_1920.jpg', '**Getting Started with JavaScript: Your Gateway to Web Development**

In the dynamic realm of web development, JavaScript stands as a cornerstone language that brings interactivity and functionality to websites and applications. Whether you''re a budding developer or someone curious about the language that powers modern web experiences, embarking on your journey with JavaScript is an exciting endeavor. Let''s dive into the basics and set the stage for your JavaScript adventure.

**Understanding JavaScript**

JavaScript is a versatile, high-level programming language primarily used for building interactive elements within web pages. Unlike HTML (Hypertext Markup Language) and CSS (Cascading Style Sheets), which focus on structure and design respectively, JavaScript adds behavior to your web content. This dynamic trio works together harmoniously to create the immersive online experiences we''ve come to expect.

**Key Concepts**

1. **Scripting Language:** JavaScript is often referred to as a scripting language because it''s executed by the browser as scripts. These scripts dictate how web pages behave in response to user actions and events.

2. **Client-Side Language:** JavaScript runs on the client side, meaning it''s executed within the user''s browser. This enables real-time interactions without the need for constant communication with the server.

3. **Syntax and Logic:** JavaScript uses a syntax similar to other programming languages. It incorporates conditionals (if statements), loops (for and while), functions, and more to control program flow and behavior.

**Getting Started**

1. **Setting Up:** No special software is needed to start working with JavaScript. A web browser and a simple text editor are all you need. You can write JavaScript code directly within the `<script>` tags in an HTML file or in an external `.js` file linked to your HTML.

2. **Hello, World!:** Let''s write your first JavaScript program. In an HTML file, add the following code between the `<script>` tags within the `<head>` section:
  
  ```html
  <script>
      console.log("Hello, World!");
  </script>
  ```

3. **Variables:** Variables store data values. Declare a variable using the `var`, `let`, or `const` keyword. For example:
  
  ```javascript
  var message = "Welcome to JavaScript!";
  ```

4. **Functions:** Functions are blocks of code that can be reused. Define a function like this:
  
  ```javascript
  function greet(name) {
      return "Hello, " + name + "!";
  }
  ```

**Bringing Interactivity**

JavaScript''s real magic lies in its ability to make websites interactive. You can respond to user actions, validate forms, and modify HTML and CSS on the fly.

1. **Event Handling:** You can respond to user actions like clicks and keypresses. For example:
  
  ```javascript
  document.querySelector("#myButton").addEventListener("click", function() {
      alert("Button clicked!");
  });
  ```

2. **DOM Manipulation:** The Document Object Model (DOM) is a representation of the web page''s structure. JavaScript allows you to manipulate the DOM to change content and appearance dynamically.

**Resources for Learning**

1. **Online Tutorials:** Websites like MDN Web Docs, W3Schools, and freeCodeCamp offer comprehensive JavaScript tutorials for beginners.

2. **Interactive Learning:** Platforms like Codecademy and Udacity provide interactive coding challenges to help you practice.

**Conclusion**

JavaScript opens doors to endless possibilities in web development. As you embark on your JavaScript journey, remember that practice and experimentation are your allies. Whether you''re building a personal website, crafting interactive forms, or adding visual effects, JavaScript will be your steadfast companion on your path to creating engaging web experiences. Happy coding!
        ', '2023-08-14 14:22:23.095+00', '2023-08-14 15:02:49.314+00');
INSERT INTO public.posts VALUES (4, 1, true, 'Exploring Cloud Computing', 'clouds-1282314_1920.jpg', '**Exploring Cloud Computing: Unleashing the Power of the Virtual Horizon**

In the era of digital transformation, where data is the currency of the modern world, cloud computing emerges as a revolutionary force that reshapes how businesses and individuals leverage technology. This virtual powerhouse is transforming the way we store, access, and manage data, offering unparalleled scalability, flexibility, and innovation. Join us as we embark on a journey to explore the fascinating realm of cloud computing.

**Understanding Cloud Computing**

At its core, cloud computing is the delivery of computing resources—such as servers, storage, databases, networking, software, and analytics—over the internet, often referred to as "the cloud." This eliminates the need for physical hardware and local infrastructure, allowing users to access and utilize resources remotely.

**Key Concepts**

1. **Service Models:** Cloud computing is categorized into three main service models:
  - **Infrastructure as a Service (IaaS):** Provides virtualized computing resources over the internet, including virtual machines, storage, and networking components.
  - **Platform as a Service (PaaS):** Offers a platform that allows developers to build, deploy, and manage applications without worrying about underlying infrastructure.
  - **Software as a Service (SaaS):** Delivers software applications via the cloud, eliminating the need for installation and maintenance.

2. **Deployment Models:** Cloud services can be deployed using different models:
  - **Public Cloud:** Services are offered by third-party providers and accessible to anyone via the internet.
  - **Private Cloud:** Services are dedicated to a specific organization and not shared with others. It can be hosted on-premises or by a third-party provider.
  - **Hybrid Cloud:** Combines public and private cloud resources, allowing data and applications to be shared between them.

**Advantages of Cloud Computing**

1. **Scalability:** Cloud resources can be easily scaled up or down based on demand, ensuring efficient resource utilization and cost savings.

2. **Flexibility:** Users have the flexibility to choose the services they need and pay only for what they use.

3. **Cost-Efficiency:** Cloud computing eliminates the need for upfront infrastructure investments and reduces maintenance costs.

4. **Global Accessibility:** Cloud services can be accessed from anywhere with an internet connection, promoting collaboration and remote work.

5. **Reliability:** Cloud providers offer high levels of redundancy and data backup, minimizing the risk of data loss.

**Real-World Applications**

1. **Businesses:** Cloud computing enables businesses to streamline operations, enhance collaboration, and innovate faster by leveraging scalable and cost-effective IT resources.

2. **Data Analytics:** Cloud platforms offer powerful tools for data processing and analysis, allowing organizations to gain insights from massive datasets.

3. **IoT (Internet of Things):** Cloud computing supports IoT devices by providing the infrastructure to store, process, and analyze data generated by these devices.

4. **Development and Testing:** Cloud platforms provide a sandbox for developers to build, test, and deploy applications without the need for extensive local infrastructure.

**Challenges and Considerations**

1. **Security:** While cloud providers implement robust security measures, data breaches and security vulnerabilities are still concerns.

2. **Vendor Lock-In:** Switching between cloud providers can be challenging due to differences in services and APIs.

3. **Data Privacy:** Compliance with data protection regulations and maintaining data privacy can be complex.

**Conclusion**

Cloud computing represents a paradigm shift in how we approach technology. It empowers businesses to innovate without being burdened by infrastructure concerns and offers individuals access to powerful resources at their fingertips. As cloud technology continues to evolve, it will reshape industries, drive innovation, and unlock new possibilities that were once unimaginable. In a world where the virtual horizon knows no bounds, cloud computing is a force that propels us toward the future.
        ', '2023-08-14 14:22:23.097+00', '2023-08-14 15:02:49.316+00');
INSERT INTO public.posts VALUES (5, 2, true, 'Effective Time Management Strategies', 'woman-4118058_1920.jpg', '**Effective Time Management Strategies: Mastering the Art of Productivity**

In a world filled with endless tasks, commitments, and distractions, effective time management stands as a powerful skill that can elevate your productivity and lead to a more balanced and fulfilling life. The ability to allocate your time wisely can have a profound impact on your personal and professional achievements. Let''s delve into some proven strategies that can help you make the most of every moment.

**1. Set Clear Goals**

A journey without a destination is aimless. Setting clear and achievable goals provides you with a sense of purpose and direction. Break your goals into smaller, actionable steps and prioritize them based on their importance and deadlines.

**2. Prioritize Tasks**

The Eisenhower Matrix, also known as the Urgent-Important Matrix, is a valuable tool for prioritization. Categorize tasks into four quadrants: urgent and important, important but not urgent, urgent but not important, and neither urgent nor important. Focus your energy on tasks in the "important but not urgent" quadrant to prevent last-minute rushes.

**3. Plan Ahead**

Taking a few minutes at the beginning or end of the day to plan your tasks can save you hours of confusion and stress. Create a to-do list, schedule tasks in a calendar, or use task management tools to organize your day.

**4. Use the Pomodoro Technique**

The Pomodoro Technique involves breaking your work into focused intervals (typically 25 minutes) followed by a short break. This method can enhance your concentration and prevent burnout.

**5. Eliminate Multitasking**

Contrary to popular belief, multitasking can hinder productivity. Instead, practice monotasking—focusing on one task at a time. This approach improves concentration and leads to better results.

**6. Delegate and Outsource**

You don''t have to do everything yourself. Delegate tasks that can be handled by others and consider outsourcing tasks that fall outside your expertise. This frees up your time for tasks that truly require your attention.

**7. Learn to Say No**

Saying yes to every request can spread you thin. Politely decline commitments that don''t align with your goals or priorities. Saying no respectfully is a step toward protecting your time.

**8. Minimize Distractions**

Digital distractions, such as social media and constant notifications, can be productivity killers. Turn off non-essential notifications, allocate specific times for checking emails and messages, and consider using website blockers during work sessions.

**9. Batch Similar Tasks**

Group similar tasks together and tackle them in one go. This prevents constant context switching and optimizes your focus and efficiency.

**10. Reflect and Review**

Regularly assess your progress and productivity. Identify areas where you can improve and adjust your strategies accordingly. Continuous self-reflection leads to refinement and growth.

**11. Take Breaks**

Burnout is counterproductive. Regular breaks—whether it''s a short walk, deep breathing, or a moment of mindfulness—recharge your energy and maintain your focus.

**12. Learn to Let Go**

Not all tasks are equally important. Learn to let go of tasks that no longer align with your goals or bring minimal value. Sometimes, less is more.

**13. Maintain Work-Life Balance**

Remember that time management isn''t just about work. Allocate time for relaxation, hobbies, and spending quality time with loved ones. A well-rounded life is a key to long-term productivity.

**14. Continuous Improvement**

Time management is a skill that evolves. Continuously seek ways to enhance your techniques, experiment with different strategies, and adapt to changing circumstances.

**Conclusion**

Effective time management isn''t about squeezing more tasks into your day—it''s about making the most of the time you have. By incorporating these strategies into your routine, you''ll find yourself with not only increased productivity but also a sense of control, balance, and accomplishment. Remember, time is a limited resource, and how you manage it can shape the trajectory of your success and well-being.
        ', '2023-08-14 14:22:23.099+00', '2023-08-14 15:02:49.318+00');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (2, true, false, 'Jane', 'Smith', 'jane@example.com', '$scrypt$n=16384,r=8,p=1$miRdI4BElzuvU3rOERcs7g$GVxlDQ6KFI4EFWFDLtWj6KesdHjLqBnkgDUdTli2EuI+SkuWfMh8rnOIyXqseOVUtaxc9JjY9hHKskl9wIcW3w', 'Jane Smith is a multifaceted individual whose journey weaves through the realms of creativity, advocacy, and community building. With a background in visual arts, she employs her canvas as a means of self-expression, using color, texture, and form to communicate emotions and stories that resonate with viewers. Jane''s artworks serve as windows into her soul, inviting observers to explore the depths of human experiences.

Jane''s dedication extends to the educational realm, where she has a knack for inspiring learners of all ages. As an educator, she strives to nurture creativity and critical thinking, encouraging her students to embrace their unique talents and perspectives.

With an open heart and a zest for life, Jane Smith continues to paint the world with vibrant strokes of compassion and creativity. Her story is a testament to the power of using one''s passions and talents to shape a more colorful and just world.
        ', '2023-08-14 14:22:23.049+00', '2023-08-14 15:14:47.309+00');
INSERT INTO public.users VALUES (1, true, true, 'John', 'Doe', 'john@example.com', '$scrypt$n=16384,r=8,p=1$rH7k9IPiFW2y6TsOKetjew$PMH86W9Ts2in3NJynYiPJpzaV8n4O4VhkxJTYNX25XZ5cNzAJkE0u/PIWVZQl2c7AlOeaBGAPs74f+dZVEYLOQ', 'John Doe is a seasoned explorer of both the physical and digital realms. With an insatiable curiosity, he has ventured into the uncharted territories of technology, weaving innovation into his life''s tapestry. As an accomplished software engineer, his fingers dance across the keyboard, crafting intricate lines of code that bring digital dreams to life. His expertise spans from crafting elegant front-end interfaces that dazzle users to architecting robust back-end systems that power the modern digital landscape.

Beyond the glow of screens, John''s passions extend to the great outdoors. A nature enthusiast, he can be found traversing rugged trails, capturing the beauty of landscapes through the lens of his camera. His fervor for exploration mirrors his approach to problem-solving in the world of technology—pushing boundaries, seeking novel solutions, and embracing the unknown.

John is not only a creator but also a mentor, sharing his wealth of knowledge through workshops and tutorials. His infectious enthusiasm ignites sparks of inspiration in those around him. In the ever-evolving world of technology, John stands as a beacon of innovation, his story an intricate mosaic of digital mastery and a heart that beats for the wonders of creation.
        ', '2023-08-14 14:22:23.015+00', '2023-08-14 15:14:47.274+00');
INSERT INTO public.users VALUES (3, true, false, 'Mike', 'Brown', 'mike@example.com', '$scrypt$n=16384,r=8,p=1$PXEIoVtedCtpg0OoaBylLg$7puHrXzHRWF4bFbx5AlwZ2nSPBAzhJOeiFrtpyGTNGOmlSY+w2qoGCVd7D6gJKKhjKDz+4gRkjesjSzCLxezww', 'Mike Brown embodies the fascinating fusion of two distinct worlds—mechanics and software. With a toolbox in one hand and a laptop in the other, he seamlessly navigates between the tangible realm of engines and the intricate landscapes of code. As a master mechanic, Mike''s hands-on skills are a testament to his precision and ingenuity in diagnosing and repairing vehicles.

However, Mike''s passion extends beyond the grease and gears. He is a tech-savvy aficionado who revels in the realm of software development. When he''s not under the hood of a car, he''s immersed in the virtual realm, crafting lines of code that bring innovative solutions to life. His ability to bridge these two worlds sets him apart, allowing him to design digital tools that enhance the mechanics'' trade.

Mike''s journey is a tale of seamless synergy—an individual who finds beauty in both the symphony of an engine firing to life and the poetry of clean code executing flawlessly. With each turn of a wrench or keystroke, he''s a testament to the boundless possibilities that emerge when a passion for mechanics and software meet. His story inspires others to explore the magic that happens at the intersection of the tangible and the digital.
        ', '2023-08-14 14:22:23.079+00', '2023-08-14 15:14:47.343+00');


--
-- Name: adonis_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.adonis_schema_id_seq', 21, true);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comments_id_seq', 13, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 6, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- Name: adonis_schema adonis_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adonis_schema
    ADD CONSTRAINT adonis_schema_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: comments comments_post_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_post_id_foreign FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: posts posts_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

