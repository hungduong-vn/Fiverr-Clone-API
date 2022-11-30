CREATE TABLE job_category(id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(255));
INSERT INTO job_category (`name`)
		VALUES('Graphics & Design');
INSERT INTO job_category (`name`)
		VALUES('Digital Marketing');
INSERT INTO job_category (`name`)
		VALUES('Writing & Translation');
INSERT INTO job_category (`name`)
		VALUES('Video & Animation');
INSERT INTO job_category (`name`)
		VALUES('Music & Audio');
INSERT INTO job_category (`name`)
		VALUES('Programming & Tech');
INSERT INTO job_category (`name`)
		VALUES('Business');
INSERT INTO job_category (`name`)
		VALUES('Lifestyle');
INSERT INTO job_category (`name`)
		VALUES('Data');

CREATE TABLE job_subcategory (
	id INT PRIMARY KEY AUTO_INCREMENT,
	job_cat_id INT,
	name VARCHAR(255),
	img VARCHAR(3000),
	FOREIGN KEY (job_cat_id) REFERENCES job_category (id))
INSERT INTO job_subcategory
		VALUES(
			0, 1, "Logo & Brand Identity", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/431c7d880582a199f5b240dde2694206-1626594004536/Logo%20_%20Brand%20Identity_B_2x.png")
	INSERT INTO job_subcategory
		VALUES(
			0, 1, "Web & App Design", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/431c7d880582a199f5b240dde2694206-1626594004528/Web%20_%20App_2x.png")
	INSERT INTO job_subcategory
		VALUES(
			0, 1, "Art & Illustration", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/fa22b92aed2d9e4e17b63c7af717aa24-1626178498456/Art%20_Illustration_2x.png")
	INSERT INTO job_subcategory
		VALUES(
			0, 1, "Marketing Design", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/fa22b92aed2d9e4e17b63c7af717aa24-1626178498477/Social_Media_2x.png")
	INSERT INTO job_subcategory
		VALUES(
			0, 1, "Gaming", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/fa22b92aed2d9e4e17b63c7af717aa24-1626178498464/Gaming_2x.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 1, "Visual Design", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/431c7d880582a199f5b240dde2694206-1626594004546/Visual%20Design_2x.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 1, "Print Design", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/75513a77da804a4b04cf63c5231e5fe2-1627366825531/print_design_2x.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 1, "Packaging & Covers", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/fa22b92aed2d9e4e17b63c7af717aa24-1626178498470/Packaging_Labels_2x.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 1, "Architecture & Building Design", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/a8ae03c1e91eac597223cdcdc1dd5b21-1626601242964/Architecture%20_%20Building%20%20Design.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 1, "Product & Characters Design", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/431c7d880582a199f5b240dde2694206-1626594004535/Product%20_%20Characters%20Design_2x.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 1, "Fashion & Jewelry", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/fa22b92aed2d9e4e17b63c7af717aa24-1626178498453/Fashion_Merchandise_2x.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 1, "Miscellaneous", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/fa22b92aed2d9e4e17b63c7af717aa24-1626178498458/Misc_2x.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 2, "Search", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/a523607ea55cc9551ec824d8f9acc9bb-1626176887661/Search.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 2, "Social", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/a523607ea55cc9551ec824d8f9acc9bb-1626176887653/Social.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 2, "Advertising", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/f1cbffb45726b34c005f3481d9ca816c-1627306546310/bucket123.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 2, "Content", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/ab745d738939315cf08475f01f9ffb22-1626176803359/Content.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 2, "Industry & Purpose-specific", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/a523607ea55cc9551ec824d8f9acc9bb-1626176887646/Industry.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 2, "Analytics & Strategy", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e6cd6d1d9520b1c9bc80207316aeb233-1626164752590/Analytics.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 3, "Content Writing & Editing", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/42593ecc6f1e40fd735892b99f001ea4-1631622804525/Content%20Writing%20_%20Editing.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 3, "Career Writing", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/42593ecc6f1e40fd735892b99f001ea4-1631622804521/Career%20Writing.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 3, "Storytelling", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e72f248973b8a6b99a5786e63b6a3b1c-1630333285633/Storytelling.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 3, "Business Copy", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/42593ecc6f1e40fd735892b99f001ea4-1631622804515/Business%20Copy.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 3, "Translation & Transcription", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/42593ecc6f1e40fd735892b99f001ea4-1631622804516/Translation%20_%20Transcription.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 3, "Sales & Marketing Copy", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/42593ecc6f1e40fd735892b99f001ea4-1631622804524/Sales%20_%20Marketing%20Copy.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 3, "Miscellaneous", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/42593ecc6f1e40fd735892b99f001ea4-1631622804532/Miscellaneous.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 4, "Editing & Post-Production", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/db9a26d5b822890f6b4e7f91b878ab19-1631622451064/Video%20Editing%20_%20Post-Production.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 4, "Animation", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/db9a26d5b822890f6b4e7f91b878ab19-1631622451068/Animation.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 4, "Social & Marketing Videos", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/db9a26d5b822890f6b4e7f91b878ab19-1631622451072/Social%20_%20Marketing%20Videos.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 4, "Product & Explainer Videos", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/db9a26d5b822890f6b4e7f91b878ab19-1631622451054/Product%20_%20Explainer%20Videos.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 4, "Tutorials & Education", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/db9a26d5b822890f6b4e7f91b878ab19-1631622451058/Tutorials%20_%20Education.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 4, "Miscellaneous", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/dcce9a72fbcb1ffb72d2d9197ad82b7b-1653910695322/Misc_Bucket.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 5, "Music Production & Writing", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/5d6a6b5b12ca229dcadc1f2e71f8a1f9-1627195918477/Music%20Production%20_%20Writing_2x.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 5, "Audio Engineering & Post Production", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/d37592402739ccf208635c8ae0097837-1626180772440/bucket%20image_2x.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 5, "Voice Over & Streaming", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/d37592402739ccf208635c8ae0097837-1626180772450/Voice%20Over%20_%20Streaming_2x.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 5, "Lessons & Transcription", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e879c801a903522f3c8500ef2a2d9566-1626180978582/Lessons_2x.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 5, "DJing", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/d37592402739ccf208635c8ae0097837-1626180772449/DJing_2x.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 5, "Sound Design", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/d37592402739ccf208635c8ae0097837-1626180772447/Misc_2x.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 6, "Websites", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/c51dbf5c160dac9bd067442911e65d16-1626181910216/Website%20Development_2x.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 6, "Website Platforms", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/ec2395caac72b3cbd2095b55ec57f5cc-1668105999293/Website%20Platforms.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 6, "Application Development", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/c51dbf5c160dac9bd067442911e65d16-1626181910215/Application%20Development_2x.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 6, "Support & Cybersecurity", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/c51dbf5c160dac9bd067442911e65d16-1626181910194/Support_Cybersecurity_2x.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 6, "Miscellaneous", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/c51dbf5c160dac9bd067442911e65d16-1626181910196/Miscellaneous_2x.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 7, "Business", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/dfda78b6f6a73b6a9994070c056c0271-1631623279984/Business_B.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 7, "General and Administrative", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/dfda78b6f6a73b6a9994070c056c0271-1631623279990/General%20and%20Administrative.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 7, "Sales & Customer Care", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/dfda78b6f6a73b6a9994070c056c0271-1631623279988/Sales%20_%20Customer%20Care.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 7, "Miscellaneous", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/dfda78b6f6a73b6a9994070c056c0271-1631623279984/Miscellaneous.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 8, "Self Improvement", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/9a9549b2f566b136fc15be5a34c49edd-1631623052328/Self%20Improvement.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 8, "Leisure & Hobbies", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/9a9549b2f566b136fc15be5a34c49edd-1631623052315/Leisure%20_%20Hobbies.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 8, "Wellness & Fitness", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/9a9549b2f566b136fc15be5a34c49edd-1631623052331/Wellness%20_%20Fitness.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 8, "Gaming", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/9a9549b2f566b136fc15be5a34c49edd-1631623052316/Gaming.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 8, "On-Camera Talent", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/9a9549b2f566b136fc15be5a34c49edd-1631623052331/On-Camera%20Talent.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 9, "Data Management", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/f9d5a328494bd9d9b9cdc2db25278c64-1631623172011/Data%20Management.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 9, "Data Storage", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/f9d5a328494bd9d9b9cdc2db25278c64-1631623172003/Data%20Storage.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 9, "Data Analysis", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/f9d5a328494bd9d9b9cdc2db25278c64-1631623172013/Data%20Analysis.png");
	INSERT INTO job_subcategory
		VALUES(
			0, 9, "Miscellaneous", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/f9d5a328494bd9d9b9cdc2db25278c64-1631623172001/Miscellaneous.png");
DROP TABLE popular_service;
CREATE TABLE popular_service (
	id INT PRIMARY KEY AUTO_INCREMENT,
	job_cat_id INT,
	name VARCHAR(255),
	img VARCHAR(3000),
	FOREIGN KEY (job_cat_id) REFERENCES job_category (id));

INSERT INTO popular_service VALUES (0, 1, "Minimalist Logo Design", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/97477f04af40de3aa1f8d6aa21f69725-1626179101614/Logo%20design_2x.png");
INSERT INTO popular_service VALUES (0, 1, "Architecture & Interior Design", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/97477f04af40de3aa1f8d6aa21f69725-1626179101618/Architecture%20_%20Interior%20Design_2x.png");
INSERT INTO popular_service VALUES (0, 1, "Image Editing", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/97477f04af40de3aa1f8d6aa21f69725-1626179101624/Photoshop%20Editing_2x.png");
INSERT INTO popular_service VALUES (0, 1, "NFT Art", "https://fiverr-res.cloudinary.com/f_auto,q_auto/v1/attachments/generic_asset/asset/fc6c7b8c1d155625e7878252a09c4437-1653222039380/Nft%20Art%20%281%29.png");
INSERT INTO popular_service VALUES (0, 1, "T-Shirts & Merchandise", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/97477f04af40de3aa1f8d6aa21f69725-1626179101623/T-Shirts%20_%20Merchandise_2x.png");
INSERT INTO popular_service VALUES (0, 1, "Illustration", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/97477f04af40de3aa1f8d6aa21f69725-1626179101633/Illustration_2x.png");
INSERT INTO popular_service VALUES (0, 1, "Business Cards Design", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e72f248973b8a6b99a5786e63b6a3b1c-1630333285646/Resume%20Writing.png");
INSERT INTO popular_service VALUES (0, 1, "Social Media Design", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/97477f04af40de3aa1f8d6aa21f69725-1626179101621/Social%20Media%20Design_2x.png");
INSERT INTO popular_service VALUES (0, 1, "Graphics for Streamers", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/97477f04af40de3aa1f8d6aa21f69725-1626179101632/Graphics%20for%20Streamers_2x.png");
INSERT INTO popular_service VALUES (0, 2, "SEO", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/db18b6c9ba3af4778a5796b9e94137d7-1626177278710/SEO_2x.png");
INSERT INTO popular_service VALUES (0, 2, "Social Media Marketing", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/db18b6c9ba3af4778a5796b9e94137d7-1626177278701/Social%20Media%20Marketing_2x.png");
INSERT INTO popular_service VALUES (0, 2, "Video Marketing", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/db18b6c9ba3af4778a5796b9e94137d7-1626177278703/Video%20Marketing_2x.png");
INSERT INTO popular_service VALUES (0, 2, "Music Promotion", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/db18b6c9ba3af4778a5796b9e94137d7-1626177278721/Music%20Promotion_2x.png");
INSERT INTO popular_service VALUES (0, 2, "Social Media Advertising", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/db18b6c9ba3af4778a5796b9e94137d7-1626177278720/Social%20Media%20Advertising_2x.png");
INSERT INTO popular_service VALUES (0, 2, "E-Commerce Marketing", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/db18b6c9ba3af4778a5796b9e94137d7-1626177278707/E-Commerce%20Marketing_2x.png");
INSERT INTO popular_service VALUES (0, 2, "Email Marketing", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/db18b6c9ba3af4778a5796b9e94137d7-1626177278711/Email%20Marketing_2x.png");
INSERT INTO popular_service VALUES (0, 2, "SEM", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/db18b6c9ba3af4778a5796b9e94137d7-1626177278716/SEM_2x.png");
INSERT INTO popular_service VALUES (0, 3, "Articles & Blog Posts", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e72f248973b8a6b99a5786e63b6a3b1c-1630333285644/Articles%20_%20Blog%20Posts.png");
INSERT INTO popular_service VALUES (0, 3, "Translation", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e72f248973b8a6b99a5786e63b6a3b1c-1630333285630/Translation.png");
INSERT INTO popular_service VALUES (0, 3, "Ghostwriting", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e72f248973b8a6b99a5786e63b6a3b1c-1630333285651/Ghostwriting.png");
INSERT INTO popular_service VALUES (0, 3, "Proofreading & Editing", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e72f248973b8a6b99a5786e63b6a3b1c-1630333285643/Proofreading%20_%20Editing.png");
INSERT INTO popular_service VALUES (0, 3, "Resume Writing", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e72f248973b8a6b99a5786e63b6a3b1c-1630333285646/Resume%20Writing.png");
INSERT INTO popular_service VALUES (0, 3, "Website Content", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e72f248973b8a6b99a5786e63b6a3b1c-1630333285650/Website%20Content.png");
INSERT INTO popular_service VALUES (0, 3, "Product Descriptions", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e72f248973b8a6b99a5786e63b6a3b1c-1630333285639/Product%20Descriptions.png");
INSERT INTO popular_service VALUES (0, 3, "Scriptwriting", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e72f248973b8a6b99a5786e63b6a3b1c-1630333285629/Scriptwriting.png");
INSERT INTO popular_service VALUES (0, 3, "Book Editing", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e72f248973b8a6b99a5786e63b6a3b1c-1630333285638/Book%20Editing.png");
INSERT INTO popular_service VALUES (0, 4, "Video Editing", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/89ab9ac515a075a49a33b72518218e69-1630332670390/Video%20Editing.png");
INSERT INTO popular_service VALUES (0, 4, "Video Ads & Commercials", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/89ab9ac515a075a49a33b72518218e69-1630332670370/Short%20Video%20Ads.png");
INSERT INTO popular_service VALUES (0, 4, "Whiteboard & Animated Explainers", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/4e99f7989f6e3ea9fc115fc017051455-1630332866288/Whiteboard%20_%20Animated%20Explainers.png");
INSERT INTO popular_service VALUES (0, 4, "Character Animation", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/89ab9ac515a075a49a33b72518218e69-1630332670382/Character%20Animation.png");
INSERT INTO popular_service VALUES (0, 4, "Social Media Videos", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/9d0390ca87e4f946f4b4126d5cd15332-1653292063612/Social%20Media%20Videos%20icon%29.png");
INSERT INTO popular_service VALUES (0, 4, "E-Commerce Product Videos", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/89ab9ac515a075a49a33b72518218e69-1630332670387/E-Commerce%20Product%20Videos.png");
INSERT INTO popular_service VALUES (0, 4, "Logo Animation", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/89ab9ac515a075a49a33b72518218e69-1630332670372/Logo%20Animation.png");
INSERT INTO popular_service VALUES (0, 4, "Visual Effects", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/89ab9ac515a075a49a33b72518218e69-1630332670391/Visual%20Effects.png");
INSERT INTO popular_service VALUES (0, 4, "3D Product Animation", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/89ab9ac515a075a49a33b72518218e69-1630332670388/3D%20Product%20Animation.png");
INSERT INTO popular_service VALUES (0, 5, "Voice Over", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/849e7cac6e16783b5dc3ab006b128c00-1626181323563/Voice%20Over_2x.png");
INSERT INTO popular_service VALUES (0, 5, "Producers & Composers", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/849e7cac6e16783b5dc3ab006b128c00-1626181323574/Producers_Composers_2x.png");
INSERT INTO popular_service VALUES (0, 5, "Singers & Vocalists", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/849e7cac6e16783b5dc3ab006b128c00-1626181323569/Singers_Vocalists_2x.png");
INSERT INTO popular_service VALUES (0, 5, "Mixing & Mastering", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/849e7cac6e16783b5dc3ab006b128c00-1626181323569/Mixing_Mastering_2x.png");
INSERT INTO popular_service VALUES (0, 5, "Session Musicians", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/849e7cac6e16783b5dc3ab006b128c00-1626181323556/Session%20Musicians_2x.png");
INSERT INTO popular_service VALUES (0, 5, "Songwriters", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/849e7cac6e16783b5dc3ab006b128c00-1626181323560/Songwriters_2x.png");
INSERT INTO popular_service VALUES (0, 5, "Podcast Production", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/849e7cac6e16783b5dc3ab006b128c00-1626181323553/Podcast%20Editing_2x.png");
INSERT INTO popular_service VALUES (0, 5, "Beats", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/849e7cac6e16783b5dc3ab006b128c00-1626181323551/Beats%20%28Beat%20Making%29_2x.png");
INSERT INTO popular_service VALUES (0, 5, "Sound Design", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/849e7cac6e16783b5dc3ab006b128c00-1626181323558/Sound%20Design_2x.png");
INSERT INTO popular_service VALUES (0, 6, "WordPress Developers", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/b6701ed1ebb288b30d0a845b6b87c071-1626182044816/WordPress%20Developers_2x.png");
INSERT INTO popular_service VALUES (0, 6, "Shopify Developers", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/b6701ed1ebb288b30d0a845b6b87c071-1626182044812/Shopify%20Developers_2x.png");
INSERT INTO popular_service VALUES (0, 6, "Wix Developers", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/b6701ed1ebb288b30d0a845b6b87c071-1626182044829/Wix%20Developers_2x.png");
INSERT INTO popular_service VALUES (0, 6, "Android Developers", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/b6701ed1ebb288b30d0a845b6b87c071-1626182044823/Android%20Developers_2x.png");
INSERT INTO popular_service VALUES (0, 6, "iOS Developers", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/b6701ed1ebb288b30d0a845b6b87c071-1626182044806/iOS%20Developers_2x.png");
INSERT INTO popular_service VALUES (0, 6, "Unity Developers", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/b6701ed1ebb288b30d0a845b6b87c071-1626182044819/Unity%20Developers_2x.png");
INSERT INTO popular_service VALUES (0, 6, "Python Developers", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/b6701ed1ebb288b30d0a845b6b87c071-1626182044812/Python%20Developers_2x.png");
INSERT INTO popular_service VALUES (0, 6, "JavaScript Developers", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/b6701ed1ebb288b30d0a845b6b87c071-1626182044826/JavaScript%20Developers_2x.png");
INSERT INTO popular_service VALUES (0, 6, "HTML & CSS Developers", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/d10b2d17b529a4f9e4fcea0cc4036259-1627221464843/Html%20and%20Css.png");
INSERT INTO popular_service VALUES (0, 7, "E-Commerce Store Manager", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/70958cf8c8b29ab96cabd1b1bc065490-1630317720709/Frame%20691311670.png");
INSERT INTO popular_service VALUES (0, 7, "Lead Generation", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/01450128a7a217803cc1883e43cf26ec-1631621994546/sales.png");
INSERT INTO popular_service VALUES (0, 7, "Accounting & Bookkeeping", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/70958cf8c8b29ab96cabd1b1bc065490-1630317720700/Frame%20691311530.png");
INSERT INTO popular_service VALUES (0, 7, "Patent Applications", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/70958cf8c8b29ab96cabd1b1bc065490-1630317720691/Frame%20691311671.png");
INSERT INTO popular_service VALUES (0, 7, "CRM Management", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/70958cf8c8b29ab96cabd1b1bc065490-1630317720693/Frame%20691311667.png");
INSERT INTO popular_service VALUES (0, 7, "Business Plans", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/70958cf8c8b29ab96cabd1b1bc065490-1630317720698/Frame%20691311672.png");
INSERT INTO popular_service VALUES (0, 7, "Business Consulting", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/70958cf8c8b29ab96cabd1b1bc065490-1630317720713/Frame%20691311668.png");
INSERT INTO popular_service VALUES (0, 7, "Customer Care", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/70958cf8c8b29ab96cabd1b1bc065490-1630317720693/Frame%20691311667.png");
INSERT INTO popular_service VALUES (0, 7, "Legal Consulting", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/70958cf8c8b29ab96cabd1b1bc065490-1630317720691/Frame%20691311671.png");
INSERT INTO popular_service VALUES (0, 7, "Market Research", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/70958cf8c8b29ab96cabd1b1bc065490-1630317720697/Frame%20691311666.png");
INSERT INTO popular_service VALUES (0, 7, "Virtual Assistant", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/70958cf8c8b29ab96cabd1b1bc065490-1630317720690/Frame%20691311673.png");
INSERT INTO popular_service VALUES (0, 8, "Math Tutoring", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/cf29f9e9f4e4c9a097489fea71cbf8b8-1666877327759/Math%20tutoring.png");
INSERT INTO popular_service VALUES (0, 8, "Game Coaching", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/bc52d09000ec9f63b016aa744d321514-1630332267510/Game%20Coaching.png");
INSERT INTO popular_service VALUES (0, 8, "Trip Plans", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/012cb4b9030b6a098a1646086c2a7aa2-1666877354492/Traveling.png");
INSERT INTO popular_service VALUES (0, 8, "FIFA Coaching", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/099350be69ed7a96a3660676e8d9b26a-1666877292598/FIFA.png");
INSERT INTO popular_service VALUES (0, 8, "Greeting Cards Videos", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/514949a62eab6dada56eeb54b4e004c3-1666877312118/Greeting%20card%20_%20Video.png");
INSERT INTO popular_service VALUES (0, 8, "Modeling & Acting", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/bc52d09000ec9f63b016aa744d321514-1630332267504/Modeling%20_%20Acting.png");
INSERT INTO popular_service VALUES (0, 8, "Arts & Crafts", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/bc52d09000ec9f63b016aa744d321514-1630332267494/Arts%20_%20Crafts.png");
INSERT INTO popular_service VALUES (0, 8, "Life Coaching", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/bc52d09000ec9f63b016aa744d321514-1630332267502/Life%20Coaching.png");
INSERT INTO popular_service VALUES (0, 8, "Personal Stylists", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/bc52d09000ec9f63b016aa744d321514-1630332267511/Personal%20Stylists.png");
INSERT INTO popular_service VALUES (0, 9, "Machine Learning", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e099d489c1f140e60bed23c68645aa07-1630333714007/Computer%20Vision.png");
INSERT INTO popular_service VALUES (0, 9, "Survey Analysis", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e099d489c1f140e60bed23c68645aa07-1630333713985/Surveys%20Analysis.png");
INSERT INTO popular_service VALUES (0, 9, "Formulas & Macros", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e099d489c1f140e60bed23c68645aa07-1630333714001/Formulas%20_%20Macros.png");
INSERT INTO popular_service VALUES (0, 9, "Web Scraping", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e099d489c1f140e60bed23c68645aa07-1630333714000/Web%20Scraping.png");
INSERT INTO popular_service VALUES (0, 9, "Data Analyst", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e099d489c1f140e60bed23c68645aa07-1630333713994/Business%20Analytics.png");
INSERT INTO popular_service VALUES (0, 9, "Dashboards", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e099d489c1f140e60bed23c68645aa07-1630333713997/Dashboards.png");
INSERT INTO popular_service VALUES (0, 9, "Text Analysis & NLP", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e099d489c1f140e60bed23c68645aa07-1630333713989/Text%20Analysis%20_%20NLP.png");
INSERT INTO popular_service VALUES (0, 9, "Database Design", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e099d489c1f140e60bed23c68645aa07-1630333714004/Databases.png");
INSERT INTO popular_service VALUES (0, 9, "Data Entry", "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/e099d489c1f140e60bed23c68645aa07-1630333713985/Data%20Typing.png");
DROP TABLE related_service;
CREATE TABLE related_service (
	id INT PRIMARY KEY AUTO_INCREMENT,
	job_cat_id INT,
	name VARCHAR(255),
	FOREIGN KEY (job_cat_id) REFERENCES job_category(id));
INSERT INTO related_service VALUES (0, 1, "Minimalist logo design");
INSERT INTO related_service VALUES (0, 1, "Signature logo design");
INSERT INTO related_service VALUES (0, 1, "Mascot logo design");
INSERT INTO related_service VALUES (0, 1, "3d logo design");
INSERT INTO related_service VALUES (0, 1, "Hand drawn logo design");
INSERT INTO related_service VALUES (0, 1, "Vintage logo design");
INSERT INTO related_service VALUES (0, 1, "Remove background");
INSERT INTO related_service VALUES (0, 1, "Photo restoration");
INSERT INTO related_service VALUES (0, 1, "Photo retouching");
INSERT INTO related_service VALUES (0, 1, "Image resize");
INSERT INTO related_service VALUES (0, 1, "Product label design");
INSERT INTO related_service VALUES (0, 1, "Custom twitch overlay");
INSERT INTO related_service VALUES (0, 1, "Custom twitch emotes");
INSERT INTO related_service VALUES (0, 1, "Gaming logo");
INSERT INTO related_service VALUES (0, 1, "Children book illustration");
INSERT INTO related_service VALUES (0, 1, "Instagram design");
INSERT INTO related_service VALUES (0, 1, "Movie poster design");
INSERT INTO related_service VALUES (0, 1, "Box design");
INSERT INTO related_service VALUES (0, 1, "Logo maker");
INSERT INTO related_service VALUES (0, 1, "Logo ideas");
INSERT INTO related_service VALUES (0, 2, "SEO services");
INSERT INTO related_service VALUES (0, 2, "Music promotion");
INSERT INTO related_service VALUES (0, 2, "Social media marketing");
INSERT INTO related_service VALUES (0, 2, "Video marketing");
INSERT INTO related_service VALUES (0, 2, "Social Content");
INSERT INTO related_service VALUES (0, 2, "Influencer marketing");
INSERT INTO related_service VALUES (0, 2, "Spotify music promotion");
INSERT INTO related_service VALUES (0, 2, "Shoutouts & Promotion");
INSERT INTO related_service VALUES (0, 2, "Youtube marketing");
INSERT INTO related_service VALUES (0, 3, "English to japanese translations");
INSERT INTO related_service VALUES (0, 3, "Ghostwriting");
INSERT INTO related_service VALUES (0, 3, "English to french translations");
INSERT INTO related_service VALUES (0, 3, "Proofreading & editing");
INSERT INTO related_service VALUES (0, 3, "Website content");
INSERT INTO related_service VALUES (0, 3, "English to german translations");
INSERT INTO related_service VALUES (0, 3, "English to spanish translations");
INSERT INTO related_service VALUES (0, 3, "Resume writing");
INSERT INTO related_service VALUES (0, 3, "Scriptwriting");
INSERT INTO related_service VALUES (0, 4, "Stinger Transition");
INSERT INTO related_service VALUES (0, 4, "Animated Alerts For Streamers");
INSERT INTO related_service VALUES (0, 4, "Youtube Intro Maker");
INSERT INTO related_service VALUES (0, 4, "Spokespersons Videos");
INSERT INTO related_service VALUES (0, 4, "AMV");
INSERT INTO related_service VALUES (0, 4, "Music Video Editing");
INSERT INTO related_service VALUES (0, 4, "Twitch Animation for Streamers");
INSERT INTO related_service VALUES (0, 4, "Jewelry Product Photography");
INSERT INTO related_service VALUES (0, 4, "Medical 3d Animation");
INSERT INTO related_service VALUES (0, 4, "Color Grading");
INSERT INTO related_service VALUES (0, 4, "360 Product Photography");
INSERT INTO related_service VALUES (0, 4, "Kids Photography Advertising");
INSERT INTO related_service VALUES (0, 4, "Architecture 3D Animation");
INSERT INTO related_service VALUES (0, 4, "Spanish Subtitles");
INSERT INTO related_service VALUES (0, 4, "Gaming video editing");
INSERT INTO related_service VALUES (0, 4, "Video Compositing");
INSERT INTO related_service VALUES (0, 4, "Youtube Editor");
INSERT INTO related_service VALUES (0, 4, "Cartoon Animation");
INSERT INTO related_service VALUES (0, 4, "Video Production");
INSERT INTO related_service VALUES (0, 4, "Lyric video");
INSERT INTO related_service VALUES (0, 4, "Whiteboard Animation");
INSERT INTO related_service VALUES (0, 4, "Hire Video Editors");
INSERT INTO related_service VALUES (0, 4, "Music Video Editing");
INSERT INTO related_service VALUES (0, 4, "Animated Video Ads");
INSERT INTO related_service VALUES (0, 4, "Music Video Editing");
INSERT INTO related_service VALUES (0, 5, "Online Guitar Lessons");
INSERT INTO related_service VALUES (0, 5, "Ghost Production");
INSERT INTO related_service VALUES (0, 5, "Sound Effects");
INSERT INTO related_service VALUES (0, 5, "Podcast Intro Music");
INSERT INTO related_service VALUES (0, 5, "Producer Tag");
INSERT INTO related_service VALUES (0, 5, "Music Video Editor");
INSERT INTO related_service VALUES (0, 5, "Guitar Transcription");
INSERT INTO related_service VALUES (0, 5, "Rap Writer");
INSERT INTO related_service VALUES (0, 5, "Female Voice Over");
INSERT INTO related_service VALUES (0, 5, "Producer Tag");
INSERT INTO related_service VALUES (0, 5, "Hip Hop Beats");
INSERT INTO related_service VALUES (0, 5, "Background Music");
INSERT INTO related_service VALUES (0, 5, "Remixing");
INSERT INTO related_service VALUES (0, 5, "Mashups");
INSERT INTO related_service VALUES (0, 5, "Audio Recording");
INSERT INTO related_service VALUES (0, 5, "Composing Music");
INSERT INTO related_service VALUES (0, 5, "Voice Acting");
INSERT INTO related_service VALUES (0, 5, "Music Loops");
INSERT INTO related_service VALUES (0, 5, "Music Beats");
INSERT INTO related_service VALUES (0, 5, "Backing Tracks");
INSERT INTO related_service VALUES (0, 6, "Fivem Script");
INSERT INTO related_service VALUES (0, 6, "Convert Website to App");
INSERT INTO related_service VALUES (0, 6, "Custom App");
INSERT INTO related_service VALUES (0, 6, "Discord Server");
INSERT INTO related_service VALUES (0, 6, "Python Developer");
INSERT INTO related_service VALUES (0, 6, "PHP Programmer");
INSERT INTO related_service VALUES (0, 6, "Unity Developer");
INSERT INTO related_service VALUES (0, 6, "Discord Chatbot");
INSERT INTO related_service VALUES (0, 6, "Twitch Trivia Bot");
INSERT INTO related_service VALUES (0, 6, "Shopify Expert");
INSERT INTO related_service VALUES (0, 6, "Wix Developer");
INSERT INTO related_service VALUES (0, 6, "Squarespace Programmer");
INSERT INTO related_service VALUES (0, 6, "Roblox Scripter");
INSERT INTO related_service VALUES (0, 6, "Bloxburg Builder");
INSERT INTO related_service VALUES (0, 6, "Minecraft Builders");
INSERT INTO related_service VALUES (0, 6, "Wordpress Customization");
INSERT INTO related_service VALUES (0, 6, "Book Formatting");
INSERT INTO related_service VALUES (0, 6, "Html Landing Page");
INSERT INTO related_service VALUES (0, 6, "Web Scraping");
INSERT INTO related_service VALUES (0, 6, "NFT Promotion");
INSERT INTO related_service VALUES (0, 7, "Lead Generation");
INSERT INTO related_service VALUES (0, 7, "Store Management");
INSERT INTO related_service VALUES (0, 7, "Product Research");
INSERT INTO related_service VALUES (0, 7, "Online Trading Lessons");
INSERT INTO related_service VALUES (0, 7, "Domain Name Research");
INSERT INTO related_service VALUES (0, 7, "Tax Consulting");
INSERT INTO related_service VALUES (0, 7, "Online Survey Services");
INSERT INTO related_service VALUES (0, 7, "Accounting Bookkeeping Service");
INSERT INTO related_service VALUES (0, 7, "Financial Forecasting And Modeling");
INSERT INTO related_service VALUES (0, 7, "Employee Development Services");
INSERT INTO related_service VALUES (0, 7, "Skip Tracing");
INSERT INTO related_service VALUES (0, 7, "Personal Wealth Management");
INSERT INTO related_service VALUES (0, 7, "Business Coaching");
INSERT INTO related_service VALUES (0, 7, "Job Search and Apply");
INSERT INTO related_service VALUES (0, 7, "Interview Prep");
INSERT INTO related_service VALUES (0, 7, "Legal Research");
INSERT INTO related_service VALUES (0, 7, "Legal Documents Service");
INSERT INTO related_service VALUES (0, 7, "Ebay Store Management");
INSERT INTO related_service VALUES (0, 7, "Administrative Virtual Assistant");
INSERT INTO related_service VALUES (0, 7, "Shopify Store Management");
INSERT INTO related_service VALUES (0, 8, "Valorant coaching");
INSERT INTO related_service VALUES (0, 8, "League of Legends coaching");
INSERT INTO related_service VALUES (0, 8, "Fortnite coaching");
INSERT INTO related_service VALUES (0, 8, "Roblox coaching");
INSERT INTO related_service VALUES (0, 8, "Spell casting");
INSERT INTO related_service VALUES (0, 8, "Rocket League coaching");
INSERT INTO related_service VALUES (0, 8, "Online math tutoring");
INSERT INTO related_service VALUES (0, 8, "Call of Duty coaching");
INSERT INTO related_service VALUES (0, 8, "Dota coaching");
INSERT INTO related_service VALUES (0, 8, "Minecraft coaching");
INSERT INTO related_service VALUES (0, 8, "Custom workout plan");
INSERT INTO related_service VALUES (0, 8, "Rainbow Six Siege coaching");
INSERT INTO related_service VALUES (0, 8, "Psychic reading");
INSERT INTO related_service VALUES (0, 8, "Apex Legends coaching");
INSERT INTO related_service VALUES (0, 8, "Online language tutoring");
INSERT INTO related_service VALUES (0, 8, "Super Smash coaching");
INSERT INTO related_service VALUES (0, 8, "Meal plan consultant");
INSERT INTO related_service VALUES (0, 8, "World of Warcraft coaching");
INSERT INTO related_service VALUES (0, 8, "Online science tutoring");
INSERT INTO related_service VALUES (0, 8, "Rust coaching");
INSERT INTO related_service VALUES (0, 8, "FiFa coaching");
INSERT INTO related_service VALUES (0, 8, "Reiki distance healing");
INSERT INTO related_service VALUES (0, 8, "PUBG coaching");
INSERT INTO related_service VALUES (0, 8, "Online chess coaching");
INSERT INTO related_service VALUES (0, 8, "GTA coaching");
INSERT INTO related_service VALUES (0, 9, "Data Analytics Consulting");
INSERT INTO related_service VALUES (0, 9, "Data Visualization Reports");
INSERT INTO related_service VALUES (0, 9, "Data Visualization Consulting");
INSERT INTO related_service VALUES (0, 9, "Database Administration");
INSERT INTO related_service VALUES (0, 9, "Time Series Analysis");
INSERT INTO related_service VALUES (0, 9, "Cloud Based Solutions");
INSERT INTO related_service VALUES (0, 9, "Data Processing Automations");
INSERT INTO related_service VALUES (0, 9, "Data Processing Consultation");
INSERT INTO related_service VALUES (0, 9, "Data Science Consulting");
INSERT INTO related_service VALUES (0, 9, "Data Science Ranking");
INSERT INTO related_service VALUES (0, 9, "Database Queries");
INSERT INTO related_service VALUES (0, 9, "Database Consulting");
INSERT INTO related_service VALUES (0, 9, "Data Visualization Graphs");
INSERT INTO related_service VALUES (0, 9, "Geographic Information Systems");
INSERT INTO related_service VALUES (0, 9, "Oracle Apex");
INSERT INTO related_service VALUES (0, 9, "Machine Learning");