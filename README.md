# Jekflix Template

![Jekflix Template Cover Image](https://res.cloudinary.com/dm7h7e8xj/image/upload/v1505354182/jekflix-logo_mfngps.png)

See the [demo here](https://jekflix.rossener.com/).

## What is it?

A theme for Jekyll inspired by Netflix panel for who loves movies and series and would like to have a blog with this cool appearance.

![Jekflix Screenshot Image](https://res.cloudinary.com/dm7h7e8xj/image/upload/v1566390829/jekflix-screenshot-2_zfiog2.jpg)

## Features

- [Live Search](docs/features.md#live-search)
- [Estimated Reading Time](docs/features.md#estimated-reading-time)
- [Reading Progress Bar](docs/features.md#reading-progress-bar) *(optional)*
- ["New Post" tag](docs/features.md#new-post-tag)
- [Load images on demand](docs/features.md#load-images-on-demand)
- [Push Menu](docs/features.md#push-menu)
- [SVG icons](docs/features.md#svg-icons)
- [Shell script to create posts](docs/features.md#shell-script-to-create-posts)
- [Tags page](docs/features.md#tags-page)
- [About page](docs/features.md#about-page)
- [Contact page](docs/features.md#contact-page)
- [404 error page](docs/features.md#404-error-page)
- [Feed RSS](docs/features.md#feed-rss)
- [Disqus](docs/features.md#disqus) *(optional)*
- [Featured post](docs/features.md#featured-post) *(optional)*
- [Home page pagination](docs/features.md#home-page-pagination) *(optional)*
- [Posts sidebar](docs/features.md#posts-sidebar) *(optional)*
- [Paginated posts](docs/features.md#paginated-posts) *(optional)*
- ["Before you go" modal](docs/features.md#before-you-go-modal) *(optional)*
- [Post recommendation](docs/features.md#post-recommendation)
- [Netlify CMS ready](docs/features.md#netlify-cms-ready)
- [Translations](docs/setup.md#translations) **new!**
- [Math Expressions](docs/features.md#math-expressions) *(optional)* **new!**

## SEO

- Google Analytics
- Meta tags
- JSON-LD
- Sitemap.xml
- Social Media ready

## Quick Install

In the case you're installing to existing Jekyll project, add this line to your project's `Gemfile`:

```
gem "jekflix"
```

Add this line to your project's `_config.yml`:

```
theme: jekflix
```

And then run:

```
$ bundle
```

Or install it yourself as:

```
$ gem install jekflix
```

### Theme Colors

Create the file `/assets/css/styles.scss` and add:

```
---
---

$themeColor: #ff0a16;
$primaryDark: #141414;
$accentDark: #ffffff;
$lightGray: #f2f2f2;
$texts: #333333;

@import "jekflix";
```

Modify the variables above to change your theme colors.

### Site configuration

Below are some properties you can change in your project `_config.yml`, check the [documentation](docs/settings.md#settings) for more details.

```
# Site Settings
name: Jekflix
title: Jekflix | A blog theme for Jekyll
description: Jekflix is a template for Jekyll inspired by Netflix and made by Thiago Rossener.
tags:
  - blog
  - template
  - jekyll
  - theme
  - netlify
email: youremail@xyz.com
disqus_username: disqus_username
show_hero: true
menu:
  - title: Home
    url: /
  - title: About
    url: /about
  - title: Contact
    url: /contact
  - title: Feed
    url: /feed.xml

# Social Media Settings
# Remove the item if you don't need it
github_username: github_username
facebook_username: facebook_username
twitter_username: twitter_username
instagram_username: instagram_username
linkedin_username: linkedin_username
medium_username: medium_username

# Posts Settings
show_time_bar: true
show_modal_on_exit: false
show_modal_on_finish_post: true
two_columns_layout: true

# Advanced Settings
baseurl: "" # the subpath of your site, e.g. /blog
url: "" # the base hostname & protocol for your site
google_analytics: "UA-XXXXXXXX-X"
language: "en"
categories_folder: category
sent_message_url: "/contact/message-sent/"

# Build settings
markdown: kramdown
highlighter: rouge
permalink: /:title/
collections:
  authors:
    output: true
paginate_path: "/page/:num/"
show_get_theme_btn: true
use_logo: false

# Content paginator
paginate_content:
  enabled: true
  debug: false
  collections:
    - posts
  auto: false
  separator: "--page-break--"
  permalink: "/:num/"
  seo_canonical: true
  properties:
    part:
      is_generated: true
    last:
      is_generated: true
    single:
      is_generated: true

# SASS
sass:
  style: compressed

# Plugins
plugins:
  - jekyll-paginate
  - jekyll-paginate-content
```

## Setup

In the case you're cloning this repo, follow those instructions:

- [Environment](docs/setup.md#environment)
- [Installing template](docs/setup.md#installing-template)
- [Running local](docs/setup.md#running-local)

### Customization

See the [settings documentation](docs/settings.md#settings) to customize layout, titles, social media and more.

### Theme

You can easily change the theme colors by changing the file `src/yml/theme.yml`, then running `gulp build` in your terminal.

#### GitHub pages

It's a known issue that you can't run Gulp when deploying the website into GitHub pages. So, you must change the theme colors and run `gulp build` locally, then push the changes into your repo, there is no other way.

To see how your website is going to look like when you deploy it, run `bundle exec jekyll serve` locally and access `http://127.0.0.1:4000/`.

## Posts

Use the [Front Matter properties](docs/post.md#front-matter-properties) to create posts.

> **Note:** In the case you're cloning this repo, you can use the available [script](docs/post.md#creating-a-post) to generate posts automatically.

## Questions?

File a [GitHub issue](https://github.com/thiagorossener/jekflix-template/issues/new) please.

## Author

[Thiago Rossener](https://rossener.com/)

Do you like my work? Buy me a coffee!

<a href="https://www.buymeacoffee.com/thiagorossener" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

## License

*Jekflix Template* is available under the MIT license. See the [LICENSE](https://github.com/thiagorossener/jekflix-template/blob/master/LICENSE) file for more info.
# jekflix-deploy

You said:
Uploaded image
ChatGPT said:
You are adding a GitHub Webhook, but your Payload URL is wrong.

 What the error means
syam82281 is not a valid URL.
A valid webhook URL must start with:

http:// or

https://

Example of correct format:

https://your-server-ip/webhook
or

http://your-domain.com/webhook
 What you actually need to put here
Webhook is used when:

You have a server where you installed Jenkins, or

You have a backend app listening on a port to receive webhook POST requests.

So your webhook should be like:

If using Jenkins on your EC2
Use:

http://<EC2-Public-IP>:8080/github-webhook/
Example:

http://13.233.120.50:8080/github-webhook/
If you created your own webhook endpoint
Use:

http://<EC2-Public-IP>:5000/webhook
If you have a domain
Use:

https://yourdomain.com/webhook
 Important
GitHub webhooks cannot send to GitHub username
They must send to a server URL, not a GitHub repository.

 Tell me what you want to trigger?
Which one are you doing?
Trigger Jenkins pipeline from GitHub?

Trigger Docker build on your server automatically?

Trigger GitHub Actions? → Then you do NOT need webhook.

Write 1 / 2 / 3, and I will give you exact URL to paste.

You said:
how to add the this project wedhook
ChatGPT said:
Okay, I will show you step-by-step how to add Webhook for your project.
But first you must tell me where do you want the webhook to go.

GitHub webhook needs a server URL.

 Your situation (choose one)
I need to know which case you are doing:

 Option 1 — You are using Jenkins on EC2
Webhook URL will be:

http://<EC2-Public-IP>:8080/github-webhook/
Example:

http://3.111.24.200:8080/github-webhook/
 Option 2 — You want webhook to trigger a Docker script on EC2
Webhook URL will be:

http://<EC2-Public-IP>:5000/webhook
 Option 3 — You are using GitHub Actions (CI/CD)
 Then you do NOT need any webhook.
GitHub Actions automatically runs when you push code.

🔧 Tell me which one you are doing
Please reply with 1, 2, or 3:

Jenkins pipeline

Docker automatic rebuild

GitHub Actions (no webhook needed)

Then I will give you the exact URL you must paste in the Payload URL box.

You said:
Uploaded image
ChatGPT said:
Perfect! You are using Jenkins on EC2.
So your webhook is very easy.

 Step-1: Add Webhook in GitHub
Go to:

Repository → Settings → Webhooks → Add Webhook

Paste this URL in Payload URL:
http://18.60.212.211:8080/github-webhook/
 Make sure:

It starts with http://

Ends with /github-webhook/

Your Jenkins IP is clearly shown in your screenshot:

18.60.212.211:8080

So the final webhook URL is correct.

 Step-2: Content type
Set Content type → application/json

 Step-3: Events
Select:

✔️ Just the push event

 Step-4: Save Webhook
Click Add Webhook.

If everything is correct, GitHub will show:

 ✔ 200 OK

 Step-5: Configure Jenkins Job
Open your pipeline → Configure → Build Triggers → enable:

✔ GitHub hook trigger for GITScm polling

Save.

🎉 Now Webhook Will Work
When you push to GitHub:

Webhook sends event to Jenkins

Jenkins automatically runs your pipeline

Docker/K8s will deploy updates

If you want, send me your webhook settings screenshot, I will verify it.

You said:
Uploaded image
ChatGPT said:
Perfect screenshot 👌
Now you must enable one option to make webhook work.

✅ Step-1: In this Jenkins page (Triggers section)
✔️ Tick this box:

GitHub hook trigger for GITScm polling
This is the correct setting for webhook.

🔥 VERY IMPORTANT — Without this, webhook will NOT start the pipeline.

After ticking it → click Save.

🔍 Step-2: Make sure your Git section in Jenkins has the repo URL
In the pipeline/job configuration → under Pipeline script or SCM section:

The GitHub repository URL must be correct

You must use the right branch name

This allows Jenkins to pull changes when webhook triggers.

** Step-3: GitHub Webhook URL
Make sure GitHub Webhook Payload URL is:

http://18.60.212.211:8080/github-webhook/
Content type → application/json
Events → Just push event

Status should be 200 OK.

🎉** Now Test Webhook
Do a small change in your GitHub repo → push.

If everything is correct:

Jenkins job will automatically start

You will see a new build triggered by “GitHub push”

If you want, send your webhook settings screenshot and I will verify everything.

You said:
read me add jecks and dockerand ad kubernets profto
ChatGPT said:
Got it! You want a README.md for your project showing:
✔ Jenkins
✔ Docker
✔ Kubernetes
✔ Full CI/CD workflow

Here is a clean, professional README.md you can directly copy–paste into your GitHub repo.

README.md (Professional DevOps Project)
#  DevOps CI/CD Pipeline – Jekyll Website Deployment

This project demonstrates a complete **DevOps pipeline** for deploying a Jekyll-based website using:

- **GitHub** – Code repository  
- **Jenkins** – CI/CD automation  
- **Docker** – Containerization  
- **Kubernetes (K8s)** – Deployment & scaling  
- **Webhook** – Auto-trigger builds on git push  

This setup provides a fully automated pipeline from code → build → container → deploy.

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| **GitHub** | Stores website source code |
| **Jenkins (EC2)** | CI/CD pipeline automation |
| **Docker** | Creates container image |
| **Kubernetes** | Runs & manages application |
| **AWS EC2** | Jenkins + Docker + Kubectl master node |
| **GitHub Webhook** | Auto triggers Jenkins on push |

---

## ⚙️ CI/CD Flow

Developer commit → GitHub → Webhook → Jenkins → Docker build → Push image → Kubernetes rollout


---

## 🚀 CI/CD Pipeline Steps

### **1️⃣ Jenkins Pipeline Triggers Automatically**
- Webhook triggers Jenkins on every `git push`.
- Jenkins pulls the latest code from GitHub.

### **2️⃣ Docker Build & Push**
Jenkins creates a Docker image:

```bash
docker build -t mywebsite .
docker tag mywebsite syam82281/mywebsite:latest
docker push syam82281/mywebsite:latest
** Kubernetes Deployment
Jenkins applies K8s deployment:

kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
Kubernetes will automatically:

✔ Pull the latest Docker image
✔ Update the pods
✔ Keep website running 24/7

🧱 Directory Structure
├── Dockerfile
├── Jenkinsfile
├── deployment.yaml
├── service.yaml
└── website source code
*** Dockerfile
Example:

FROM jekyll/jekyll:latest
COPY . /site
WORKDIR /site
RUN jekyll build
CMD ["jekyll", "serve", "--host", "0.0.0.0"]
*** Jenkinsfile (Pipeline)
pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/syam82281/jekflix-deploy.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t mywebsite .'
            }
        }

        stage('Push Image') {
            steps {
                sh 'docker tag mywebsite syam82281/mywebsite:latest'
                sh 'docker push syam82281/mywebsite:latest'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl apply -f service.yaml'
            }
        }
    }
}
** Kubernetes Files
deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mywebsite
spec:
  replicas: 2
  selector:
    matchLabels:
      app: mywebsite
  template:
    metadata:
      labels:
        app: mywebsite
    spec:
      containers:
      - name: website
        image: syam82281/mywebsite:latest
        ports:
        - containerPort: 4000
service.yaml
apiVersion: v1
kind: Service
metadata:
  name: mywebsite-service
spec:
  type: LoadBalancer
  selector:
    app: mywebsite
  ports:
  - port: 80
    targetPort: 4000
** GitHub Webhook Setup
Payload URL:

http://<jenkins-ip>:8080/github-webhook/
Content-Type:

application/json
Events: Just the push event
