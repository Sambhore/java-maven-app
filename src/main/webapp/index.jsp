<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>Attractive Animated Homepage</title>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;800&display=swap" rel="stylesheet">
<style>
  :root{
    --bg:#0f1724;
    --card:#0f1724a8;
    --glass: rgba(255,255,255,0.06);
    --accent1: #7c3aed; /* purple */
    --accent2: #06b6d4; /* teal */
    --muted: rgba(255,255,255,0.7);
    --glass-2: rgba(255,255,255,0.03);
  }
  *{box-sizing:border-box}
  html,body{height:100%}
  body{
    margin:0;
    font-family:Inter,system-ui,-apple-system,Segoe UI,Roboto,"Helvetica Neue",Arial;
    background: linear-gradient(180deg,#071126 0%, #071a2a 55%, #071126 100%);
    color:white;
    -webkit-font-smoothing:antialiased;
    -moz-osx-font-smoothing:grayscale;
    line-height:1.45;
  }

  /* page layout */
  .wrap{max-width:1200px;margin:0 auto;padding:48px 24px}
  header{display:flex;align-items:center;justify-content:space-between;gap:16px}
  .brand{display:flex;align-items:center;gap:12px}
  .logo{
    width:48px;height:48px;border-radius:12px;
    background:linear-gradient(135deg,var(--accent1),var(--accent2));
    display:flex;align-items:center;justify-content:center;font-weight:800;color:white;
    box-shadow:0 8px 30px rgba(2,6,23,0.6);
  }
  nav{display:flex;gap:18px;align-items:center}
  nav a{color:var(--muted);text-decoration:none;font-weight:500}
  nav a:hover{color:white;transform:translateY(-2px);transition:all .18s ease}

  /* hero */
  .hero{
    position:relative;
    display:grid;
    grid-template-columns:1fr 420px;
    gap:32px;
    align-items:center;
    padding:48px 0 80px;
    min-height:68vh;
  }
  .hero-left h1{
    font-size:clamp(28px,5vw,48px);
    margin:0 0 12px;
    letter-spacing:-0.02em;
    line-height:1.02;
  }
  .typed { color:var(--accent2); font-weight:700; }
  .lead{color: #cfe9f6; opacity:0.9; margin-bottom:18px}
  .cta-row{display:flex;gap:12px;flex-wrap:wrap}
  .btn{
    display:inline-flex;align-items:center;gap:10px;padding:12px 18px;border-radius:10px;
    background:linear-gradient(90deg,var(--accent1),var(--accent2));
    color:white;text-decoration:none;font-weight:700;box-shadow:0 10px 30px rgba(12,8,30,0.45);
    transition:transform .18s ease, box-shadow .18s ease;
  }
  .btn:hover{transform:translateY(-4px);box-shadow:0 18px 40px rgba(12,8,30,0.55)}
  .ghost{background:transparent;border:1px solid rgba(255,255,255,0.08);padding:12px 16px;border-radius:10px;color:var(--muted)}

  /* hero card */
  .hero-right{position:relative;min-height:320px}
  .glass{
    background:linear-gradient(180deg, rgba(255,255,255,0.02), rgba(255,255,255,0.01));
    border-radius:16px;padding:18px;
    box-shadow: 0 6px 30px rgba(3,6,23,0.5);backdrop-filter: blur(6px);
    border: 1px solid rgba(255,255,255,0.04);
  }

  .preview{
    height:220px;border-radius:12px;background:
      linear-gradient(120deg, rgba(255,255,255,0.02), rgba(255,255,255,0.01));
    display:flex;align-items:center;justify-content:center;position:relative;overflow:hidden;
  }

  .preview img{max-width:100%;max-height:100%;opacity:.95;filter:brightness(.98) contrast(1.05)}
  .meta{display:flex;gap:12px;margin-top:12px;align-items:center}
  .chip{padding:8px 12px;border-radius:999px;background:var(--glass-2);font-weight:600;color:var(--muted);font-size:13px}

  /* animated blobs (decorative) */
  .blob{
    position:absolute;border-radius:50%;filter:blur(60px);opacity:.6;mix-blend-mode:screen;
    transform:translateZ(0);
  }
  .b1{width:240px;height:240px;background:radial-gradient(circle at 30% 30%, rgba(124,58,237,0.9), rgba(124,58,237,0.35));top:-40px;left:-40px;animation:float 8s ease-in-out infinite}
  .b2{width:260px;height:260px;background:radial-gradient(circle at 70% 70%, rgba(6,182,212,0.9), rgba(6,182,212,0.25));bottom:-60px;right:-60px;animation:float 9s ease-in-out infinite}
  @keyframes float{0%{transform:translateY(0)}50%{transform:translateY(-18px)}100%{transform:translateY(0)}}

  /* features */
  .features{display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:18px;margin-top:28px}
  .card{
    background:linear-gradient(180deg, rgba(255,255,255,0.02), rgba(255,255,255,0.01));
    padding:18px;border-radius:12px;border:1px solid rgba(255,255,255,0.03);
    transition:transform .25s cubic-bezier(.2,.9,.2,1), box-shadow .25s;
  }
  .card:hover{transform:translateY(-10px);box-shadow:0 18px 40px rgba(2,6,23,0.6)}
  .card h3{margin:0 0 6px}
  .card p{margin:0;color:var(--muted);font-size:14px}

  /* footer */
  footer{border-top:1px solid rgba(255,255,255,0.03);margin-top:48px;padding-top:24px;color:var(--muted);font-size:14px;text-align:center}

  /* small screens */
  @media (max-width:880px){
    .hero{grid-template-columns:1fr; padding-bottom:36px}
    .hero-right{order:2}
    header{gap:8px}
  }
</style>
</head>
<body>
  <div class="wrap">
    <header>
      <div class="brand">
        <div class="logo">A</div>
        <div>
          <div style="font-weight:700">Aseem Labs</div>
          <div style="font-size:12px;color:var(--muted)">Design • Build • Ship</div>
        </div>
      </div>

      <nav>
        <a href="#features">Features</a>
        <a href="#work">Work</a>
        <a href="#contact">Contact</a>
        <a class="ghost" href="#start">Get Started</a>
      </nav>
    </header>

    <main class="hero">
      <div class="hero-left">
        <div style="max-width:720px">
          <h1>
            Beautiful web experiences — <span class="typed" id="type-target"></span>
          </h1>
          <p class="lead">Fast, modern, and delightful front-ends with subtle motion and crisp typography. Try the live preview or download the template.</p>

          <div class="cta-row">
            <a class="btn" href="#work">View Demo <svg width="16" height="16" viewBox="0 0 24 24" fill="none" style="opacity:.95"><path d="M5 12h14M13 5l7 7-7 7" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg></a>
            <a class="ghost" href="#contact">Contact Us</a>
          </div>

          <div class="features" style="margin-top:28px">
            <div class="card">
              <h3>Pixel-perfect UI</h3>
              <p>Clean components, consistent spacing, and accessible color contrasts.</p>
            </div>
            <div class="card">
              <h3>Motion that matters</h3>
              <p>Subtle animations improve comprehension and delight users.</p>
            </div>
            <div class="card">
              <h3>Performance-minded</h3>
              <p>Small payload, no heavy frameworks — just smart CSS and micro JS.</p>
            </div>
          </div>
        </div>
      </div>

      <div class="hero-right">
        <div class="blob b1" aria-hidden="true"></div>
        <div class="blob b2" aria-hidden="true"></div>

        <div class="glass">
          <div class="preview" id="preview">
            <!-- nice mockup / placeholder -->
            <svg width="320" height="200" viewBox="0 0 320 200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="demo screenshot">
              <defs>
                <linearGradient id="g1" x1="0" x2="1">
                  <stop offset="0" stop-color="#7c3aed"/><stop offset="1" stop-color="#06b6d4"/>
                </linearGradient>
              </defs>
              <rect x="8" y="8" rx="12" ry="12" width="304" height="184" fill="#021225"/>
              <rect x="28" y="26" rx="6" width="264" height="18" fill="url(#g1)"/>
              <rect x="28" y="56" rx="6" width="160" height="12" fill="#0f2740"/>
              <rect x="28" y="76" rx="6" width="264" height="10" fill="#0f2740"/>
              <circle cx="260" cy="120" r="28" fill="#073047"/>
              <text x="40" y="130" fill="#9bd9f1" font-size="14" font-family="Inter, Arial">Interactive demo preview</text>
            </svg>
          </div>

          <div class="meta">
            <div style="flex:1">
              <div style="font-weight:700">Live preview</div>
              <div style="font-size:13px;color:var(--muted)">Updated in real time</div>
            </div>
            <div class="chip">v1.2.0</div>
          </div>
        </div>
      </div>
    </main>

    <section id="work">
      <h2 style="margin-top:8px">Recent work</h2>
      <div class="features" style="margin-top:12px">
        <div class="card">
          <h3>Lightning Docs</h3>
          <p>A documentation site with instant search and inline code examples.</p>
        </div>
        <div class="card">
          <h3>Shopfront</h3>
          <p>Fast catalog with image lazy-loading and animated microinteractions.</p>
        </div>
        <div class="card">
          <h3>Admin Panel</h3>
          <p>Complex forms, validation, and smooth transitions for dashboards.</p>
        </div>
      </div>
    </section>

    <section id="contact" style="margin-top:28px">
      <h2>Get in touch</h2>
      <div style="display:flex;gap:18px;flex-wrap:wrap;margin-top:12px">
        <div style="flex:1;min-width:260px" class="glass">
          <form id="contactForm" style="display:flex;flex-direction:column;gap:10px">
            <input name="name" placeholder="Your name" style="padding:12px;border-radius:8px;border:1px solid rgba(255,255,255,0.04);background:transparent;color:white" />
            <input name="email" placeholder="Email" style="padding:12px;border-radius:8px;border:1px solid rgba(255,255,255,0.04);background:transparent;color:white" />
            <textarea name="msg" placeholder="Message" rows="4" style="padding:12px;border-radius:8px;border:1px solid rgba(255,255,255,0.04);background:transparent;color:white"></textarea>
            <div style="display:flex;gap:10px">
              <button class="btn" type="button" id="sendBtn">Send message</button>
              <button class="ghost" type="reset">Clear</button>
            </div>
            <div id="formStatus" style="color:var(--muted);font-size:13px"></div>
          </form>
        </div>

        <div style="min-width:260px;flex:1" class="glass" aria-hidden="false">
          <h3 style="margin-top:0">Office</h3>
          <p style="color:var(--muted)">Mumbai, India • Remote teams welcome</p>
          <p style="color:var(--muted)">hello@aseemlabs.example</p>
          <div style="height:18px"></div>
          <h3 style="margin-bottom:6px">Technologies</h3>
          <div style="display:flex;gap:8px;flex-wrap:wrap">
            <span class="chip">HTML</span>
            <span class="chip">CSS</span>
            <span class="chip">Vanilla JS</span>
            <span class="chip">Maven</span>
            <span class="chip">Tomcat</span>
          </div>
        </div>
      </div>
    </section>

    <footer>
      © <span id="year"></span> Aseem Labs — Crafted with care. Built for speed.
    </footer>
  </div>

<script>
  // small typewriter effect
  const phrases = ["fast performance", "subtle motion", "delightful UX", "pixel-perfect UI"];
  let idx = 0, pos = 0, forward = true;
  const el = document.getElementById('type-target');

  function tick(){
    const text = phrases[idx];
    if(forward){
      pos++;
      if(pos>=text.length){ forward=false; setTimeout(tick,900); return; }
    } else {
      pos--;
      if(pos<=0){ forward=true; idx=(idx+1)%phrases.length; setTimeout(tick,300); return; }
    }
    el.textContent = text.slice(0,pos);
    setTimeout(tick, Math.max(35,120 - pos*3));
  }
  tick();

  // small preview float transform on mouse move
  const preview = document.getElementById('preview');
  preview.addEventListener('mousemove', e=>{
    const r = preview.getBoundingClientRect();
    const x = (e.clientX - r.left) - r.width/2;
    const y = (e.clientY - r.top) - r.height/2;
    preview.style.transform = `translate3d(${x*0.02}px, ${y*0.02}px, 0) rotate(${x*0.002}deg)`;
  });
  preview.addEventListener('mouseleave', ()=> preview.style.transform = 'none');

  // fake form send
  document.getElementById('sendBtn').addEventListener('click', ()=>{
    const status = document.getElementById('formStatus');
    status.textContent = 'Sending...';
    setTimeout(()=>{ status.textContent = 'Message sent — we will reply shortly!'; }, 900);
  });

  // year
  document.getElementById('year').textContent = new Date().getFullYear();
</script>
</body>
</html>
