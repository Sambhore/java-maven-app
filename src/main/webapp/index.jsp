<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>Sachin | Developer Portfolio</title>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;800&display=swap" rel="stylesheet">

<style>
:root {
  --bg: #0a0f1f;
  --accent1: #007bff;
  --accent2: #00d4ff;
  --text: #f5f8ff;
  --muted: rgba(255,255,255,0.7);
}
* {box-sizing: border-box;}
body {
  margin: 0;
  font-family: "Poppins", sans-serif;
  background: radial-gradient(circle at top left, #0e1630, #050814);
  color: var(--text);
  overflow-x: hidden;
}

/* Header */
header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 20px 60px;
  position: sticky;
  top: 0;
  background: rgba(10,15,31,0.85);
  backdrop-filter: blur(8px);
  z-index: 10;
}
.logo {
  font-weight: 800;
  font-size: 1.5rem;
  background: linear-gradient(90deg,var(--accent1),var(--accent2));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}
nav a {
  color: var(--muted);
  margin: 0 12px;
  text-decoration: none;
  transition: 0.3s;
}
nav a:hover { color: var(--accent2); }

/* Hero Section */
.hero {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 100px 60px;
  flex-wrap: wrap;
}
.hero-text {
  flex: 1 1 400px;
  max-width: 550px;
}
.hero-text h1 {
  font-size: 2.8rem;
  margin-bottom: 10px;
  line-height: 1.2;
}
.hero-text h1 span {
  color: var(--accent2);
}
.hero-text p {
  color: var(--muted);
  font-size: 1.1rem;
  margin-bottom: 30px;
}
.btn {
  background: linear-gradient(90deg,var(--accent1),var(--accent2));
  border: none;
  padding: 12px 24px;
  border-radius: 30px;
  color: white;
  font-weight: 600;
  cursor: pointer;
  transition: transform 0.3s ease;
}
.btn:hover {
  transform: translateY(-4px);
}

/* Hero Animation */
.hero-anim {
  position: relative;
  width: 400px;
  height: 400px;
  margin-top: 40px;
}
.circle {
  position: absolute;
  border-radius: 50%;
  animation: float 8s infinite ease-in-out;
  filter: blur(50px);
}
.circle1 {
  width: 250px;
  height: 250px;
  top: 0;
  left: 20px;
  background: rgba(0,123,255,0.4);
}
.circle2 {
  width: 200px;
  height: 200px;
  bottom: 0;
  right: 0;
  background: rgba(0,212,255,0.4);
  animation-delay: 2s;
}
@keyframes float {
  0%,100% { transform: translateY(0); }
  50% { transform: translateY(-20px); }
}

/* Cards */
.features {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 20px;
  padding: 40px 60px;
}
.card {
  background: rgba(255,255,255,0.05);
  border: 1px solid rgba(255,255,255,0.08);
  border-radius: 16px;
  padding: 24px;
  transition: transform 0.3s ease, box-shadow 0.3s;
}
.card:hover {
  transform: translateY(-8px);
  box-shadow: 0 10px 30px rgba(0,0,0,0.4);
}
.card h3 {
  margin-top: 0;
  color: var(--accent2);
}
.card p {
  color: var(--muted);
}

/* Footer */
footer {
  text-align: center;
  padding: 30px;
  color: var(--muted);
  border-top: 1px solid rgba(255,255,255,0.05);
  margin-top: 40px;
  font-size: 14px;
}

@media (max-width:768px){
  header{padding: 20px;}
  .hero {padding: 80px 20px;}
  .hero-anim{display:none;}
  .features {padding: 30px 20px;}
}
</style>
</head>

<body>
<header>
  <div class="logo">Sachin.dev</div>
  <nav>
    <a href="#about">About</a>
    <a href="#projects">Projects</a>
    <a href="#contact">Contact</a>
  </nav>
</header>

<section class="hero">
  <div class="hero-text">
    <h1>Hi, I'm <span>Sachin</span></h1>
    <p>A passionate CloudOps & DevOps Engineer who loves automating, building, and deploying reliable cloud systems.</p>
    <button class="btn" onclick="alert('Thanks for visiting, Sachin welcomes you!')">Explore My Work</button>
  </div>
  <div class="hero-anim">
    <div class="circle circle1"></div>
    <div class="circle circle2"></div>
  </div>
</section>

<section id="projects" class="features">
  <div class="card">
    <h3>☁️ Cloud Automation</h3>
    <p>Automated AWS deployments using CodePipeline, CodeDeploy, and CodeBuild for seamless delivery.</p>
  </div>
  <div class="card">
    <h3>🐳 Docker & Jenkins</h3>
    <p>Containerized microservices and CI/CD pipelines for faster builds and smooth production rollout.</p>
  </div>
  <div class="card">
    <h3>💻 Web Development</h3>
    <p>Built modern, responsive web interfaces with HTML, CSS, and lightweight animations.</p>
  </div>
</section>

<footer>
  © <span id="year"></span> Sachin — Built with 💙 and creativity.
</footer>

<script>
document.getElementById('year').textContent = new Date().getFullYear();
</script>
</body>
</html>
