# Instagram Clone User Data Analysis

## Overview

Social media analytics involves collecting and interpreting data from social platforms to support business decisions and measure the effectiveness of actions based on those decisions. 

As IBM aptly describes:  
> “News of a great product can spread like wildfire. And news about a bad product — or a bad experience with a customer service rep — can spread just as quickly. Consumers are now holding organizations to account for their brand promises and sharing their experiences with friends, co-workers, and the public at large.”

With the ever-growing influence of social media, analytics has become central to shaping business strategies. These strategies help companies enhance:

- **Product Development**  
- **Customer Experience**  
- **Competitive Analysis**  
- **Operational Efficiency**

---

## Project Description

This project involves analyzing datasets generated from a clone of the popular photo-sharing app, Instagram. These datasets include users, photos, likes, follows, comments, tags, and more. The goal of this analysis is to derive insights that can assist in:

- Creating a reward system for long-term and loyal users.  
- Scheduling ad campaigns for maximum effectiveness.  
- Designing email campaigns to re-engage inactive and idle users.  
- Organizing contests to increase user engagement.  
- Monitoring user activity levels.  
- Evaluating progress toward monthly targets set by investors.  
- Identifying trending hashtags for targeted marketing campaigns.  
- Detecting potential bots and celebrity accounts.  

---

## Datasets

### **Users Table**
| Column      | Description                          |
|-------------|--------------------------------------|
| `id`        | Unique user ID                      |
| `username`  | Unique username                     |
| `created_at`| Date and time the account was created|

---

### **Photos Table**
| Column      | Description                          |
|-------------|--------------------------------------|
| `id`        | Unique photo ID                     |
| `image_url` | URL of the photo                    |
| `user_id`   | ID of the user who uploaded the photo|
| `created_at`| Date and time the photo was uploaded|

---

### **Comments Table**
| Column          | Description                           |
|------------------|---------------------------------------|
| `id`            | Unique comment ID                    |
| `comment_text`  | The text of the comment              |
| `user_id`       | ID of the user who commented         |
| `photo_id`      | ID of the photo the comment was made on|
| `created_at`    | Date and time the comment was made   |

---

### **Likes Table**
| Column      | Description                          |
|-------------|--------------------------------------|
| `user_id`   | ID of the user who liked            |
| `photo_id`  | ID of the photo liked               |
| `created_at`| Date and time the like was made     |

---

### **Follows Table**
| Column        | Description                          |
|---------------|--------------------------------------|
| `follower_id` | ID of the user who is following     |
| `followee_id` | ID of the user being followed       |
| `created_at`  | Date and time the follow occurred   |

---

### **Tags Table**
| Column      | Description                          |
|-------------|--------------------------------------|
| `id`        | Unique tag ID                       |
| `tag_name`  | Name of the hashtag                 |
| `created_at`| Date and time the tag was created   |

---

### **Junction Table: Photos-Tags**
| Column      | Description                          |
|-------------|--------------------------------------|
| `photo_id`  | ID of the photo where the tag is used|
| `tag_id`    | ID of the tag used                  |

---
