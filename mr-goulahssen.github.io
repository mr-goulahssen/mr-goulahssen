<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>Akram Goulahssen — Developer</title>
<link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;500;600;700;800&family=Instrument+Serif:ital@0;1&family=DM+Mono:wght@300;400;500&display=swap" rel="stylesheet"/>
<style>
  *, *::before, *::after { margin: 0; padding: 0; box-sizing: border-box; }

  :root {
    --bg: #f4f1eb;
    --bg2: #edeae2;
    --ink: #1a1814;
    --ink2: #4a4640;
    --ink3: #8a857e;
    --accent: #c8602a;
    --accent2: #2a6cc8;
    --white: #fafaf7;
    --border: rgba(26,24,20,0.12);
    --font-display: 'Instrument Serif', Georgia, serif;
    --font-sans: 'Syne', sans-serif;
    --font-mono: 'DM Mono', monospace;
  }

  html { scroll-behavior: smooth; }

  body {
    font-family: var(--font-sans);
    background: var(--bg);
    color: var(--ink);
    line-height: 1.6;
    overflow-x: hidden;
  }

  /* ── NOISE OVERLAY ── */
  body::before {
    content: '';
    position: fixed; inset: 0; z-index: 0;
    pointer-events: none;
    background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 256 256' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noise'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noise)' opacity='0.03'/%3E%3C/svg%3E");
    opacity: 0.4;
  }

  /* ── NAV ── */
  nav {
    position: fixed; top: 0; left: 0; right: 0; z-index: 100;
    display: flex; align-items: center; justify-content: space-between;
    padding: 1.25rem 4rem;
    background: rgba(244,241,235,0.85);
    backdrop-filter: blur(16px);
    border-bottom: 1px solid var(--border);
  }

  .nav-logo {
    font-family: var(--font-mono);
    font-size: 0.88rem;
    letter-spacing: 0.04em;
    color: var(--ink2);
  }
  .nav-logo span { color: var(--accent); }

  .nav-links { display: flex; gap: 2.5rem; list-style: none; }
  .nav-links a {
    font-size: 0.82rem;
    font-weight: 500;
    letter-spacing: 0.08em;
    text-transform: uppercase;
    color: var(--ink2);
    text-decoration: none;
    transition: color 0.2s;
    position: relative;
  }
  .nav-links a::after {
    content: '';
    position: absolute; bottom: -3px; left: 0; right: 0;
    height: 1px; background: var(--accent);
    transform: scaleX(0); transform-origin: left;
    transition: transform 0.25s;
  }
  .nav-links a:hover { color: var(--accent); }
  .nav-links a:hover::after { transform: scaleX(1); }

  /* ── HERO ── */
  #hero {
    min-height: 100vh;
    display: grid;
    grid-template-columns: 1fr 1fr;
    padding-top: 80px;
    position: relative;
  }

  .hero-left {
    display: flex; flex-direction: column; justify-content: center;
    padding: 6rem 4rem 6rem 4rem;
    position: relative;
  }

  .hero-tag {
    font-family: var(--font-mono);
    font-size: 0.78rem;
    letter-spacing: 0.12em;
    text-transform: uppercase;
    color: var(--accent);
    margin-bottom: 1.5rem;
    display: flex; align-items: center; gap: 0.75rem;
  }
  .hero-tag::before {
    content: '';
    display: inline-block;
    width: 28px; height: 1px;
    background: var(--accent);
  }

  .hero-name {
    font-family: var(--font-display);
    font-size: clamp(3.5rem, 6vw, 5.5rem);
    line-height: 1.05;
    font-weight: 400;
    margin-bottom: 1.5rem;
    color: var(--ink);
  }
  .hero-name em {
    font-style: italic;
    color: var(--accent);
  }

  .hero-desc {
    font-size: 1rem;
    color: var(--ink2);
    max-width: 420px;
    line-height: 1.8;
    margin-bottom: 3rem;
  }

  .hero-cta {
    display: flex; gap: 1rem; flex-wrap: wrap;
  }

  .btn-primary {
    display: inline-flex; align-items: center; gap: 0.6rem;
    background: var(--ink);
    color: var(--white);
    padding: 0.9rem 2rem;
    font-family: var(--font-sans);
    font-size: 0.85rem;
    font-weight: 600;
    letter-spacing: 0.05em;
    text-decoration: none;
    border: none; cursor: pointer;
    transition: background 0.2s, transform 0.2s;
    clip-path: polygon(0 0, calc(100% - 12px) 0, 100% 12px, 100% 100%, 12px 100%, 0 calc(100% - 12px));
  }
  .btn-primary:hover { background: var(--accent); transform: translateY(-2px); }

  .btn-secondary {
    display: inline-flex; align-items: center; gap: 0.6rem;
    background: transparent;
    color: var(--ink);
    padding: 0.9rem 2rem;
    font-family: var(--font-sans);
    font-size: 0.85rem;
    font-weight: 500;
    letter-spacing: 0.05em;
    text-decoration: none;
    border: 1px solid var(--border);
    cursor: pointer;
    transition: border-color 0.2s, color 0.2s;
  }
  .btn-secondary:hover { border-color: var(--accent); color: var(--accent); }

  .hero-right {
    display: flex; align-items: center; justify-content: center;
    padding: 6rem 4rem;
    position: relative;
    overflow: hidden;
  }

  .hero-visual {
    width: 340px; height: 420px;
    background: var(--bg2);
    border: 1px solid var(--border);
    position: relative;
    display: flex; align-items: center; justify-content: center;
  }

  .hero-visual::before {
    content: '';
    position: absolute; inset: -1px;
    background: linear-gradient(135deg, var(--accent) 0%, transparent 50%, var(--accent2) 100%);
    opacity: 0.15;
    pointer-events: none;
  }

  .avatar-placeholder {
    width: 120px; height: 120px;
    background: var(--ink);
    border-radius: 50%;
    display: flex; align-items: center; justify-content: center;
    font-size: 3rem;
    position: relative; z-index: 1;
  }

  .hero-visual-label {
    position: absolute; bottom: 1.5rem; left: 1.5rem;
    font-family: var(--font-mono);
    font-size: 0.72rem;
    color: var(--ink3);
    letter-spacing: 0.06em;
  }

  .hero-stats {
    position: absolute; right: -1px; top: 3rem;
    background: var(--white);
    border: 1px solid var(--border);
    padding: 1.5rem;
    display: flex; flex-direction: column; gap: 1.25rem;
    min-width: 140px;
  }

  .stat-item { text-align: center; }
  .stat-num {
    font-family: var(--font-display);
    font-size: 1.8rem;
    color: var(--accent);
    display: block;
  }
  .stat-label {
    font-size: 0.72rem;
    color: var(--ink3);
    text-transform: uppercase;
    letter-spacing: 0.08em;
  }

  .hero-decor {
    position: absolute;
    bottom: 3rem; left: -2rem;
    width: 180px; height: 180px;
    border: 1px solid var(--border);
    border-radius: 50%;
    opacity: 0.5;
  }
  .hero-decor2 {
    position: absolute;
    top: 2rem; right: 1rem;
    width: 80px; height: 80px;
    border: 1px solid var(--accent);
    opacity: 0.2;
    transform: rotate(45deg);
  }

  /* ── SECTION COMMON ── */
  section { position: relative; z-index: 1; }

  .section-header {
    display: flex; align-items: baseline; gap: 1.5rem;
    margin-bottom: 4rem;
  }
  .section-num {
    font-family: var(--font-mono);
    font-size: 0.75rem;
    color: var(--accent);
    letter-spacing: 0.1em;
  }
  .section-title {
    font-family: var(--font-display);
    font-size: clamp(2rem, 4vw, 3rem);
    font-weight: 400;
    color: var(--ink);
  }
  .section-line {
    flex: 1;
    height: 1px;
    background: var(--border);
    margin-bottom: 0.4rem;
  }

  /* ── ABOUT ── */
  #about {
    padding: 8rem 4rem;
    background: var(--white);
    border-top: 1px solid var(--border);
    border-bottom: 1px solid var(--border);
  }

  .about-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 6rem;
    align-items: start;
  }

  .about-text p {
    font-size: 1.05rem;
    color: var(--ink2);
    line-height: 1.9;
    margin-bottom: 1.5rem;
  }

  .about-text p strong {
    color: var(--ink);
    font-weight: 600;
  }

  .about-highlight {
    border-left: 2px solid var(--accent);
    padding-left: 1.5rem;
    margin: 2rem 0;
    font-family: var(--font-display);
    font-style: italic;
    font-size: 1.25rem;
    color: var(--ink);
    line-height: 1.6;
  }

  .about-details { display: flex; flex-direction: column; gap: 0.5rem; }
  .detail-row {
    display: flex;
    border-bottom: 1px solid var(--border);
    padding: 0.85rem 0;
    font-size: 0.88rem;
  }
  .detail-key {
    width: 120px;
    flex-shrink: 0;
    font-family: var(--font-mono);
    font-size: 0.75rem;
    color: var(--ink3);
    text-transform: uppercase;
    letter-spacing: 0.08em;
    padding-top: 0.1rem;
  }
  .detail-val { color: var(--ink2); }
  .detail-val a { color: var(--accent); text-decoration: none; }
  .detail-val a:hover { text-decoration: underline; }

  /* ── SKILLS ── */
  #skills {
    padding: 8rem 4rem;
    background: var(--bg);
  }

  .skills-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 2rem;
  }

  .skill-card {
    background: var(--white);
    border: 1px solid var(--border);
    padding: 2rem;
    transition: border-color 0.2s, transform 0.2s;
    position: relative;
    overflow: hidden;
  }
  .skill-card::before {
    content: '';
    position: absolute; top: 0; left: 0; right: 0;
    height: 2px;
    background: var(--accent);
    transform: scaleX(0); transform-origin: left;
    transition: transform 0.3s;
  }
  .skill-card:hover { border-color: var(--accent); transform: translateY(-4px); }
  .skill-card:hover::before { transform: scaleX(1); }

  .skill-icon {
    font-size: 1.8rem;
    margin-bottom: 1rem;
    display: block;
  }
  .skill-name {
    font-size: 0.95rem;
    font-weight: 700;
    margin-bottom: 0.75rem;
    letter-spacing: 0.03em;
  }
  .skill-tags {
    display: flex; flex-wrap: wrap; gap: 0.4rem;
  }
  .skill-tag {
    font-family: var(--font-mono);
    font-size: 0.7rem;
    padding: 0.25rem 0.6rem;
    background: var(--bg2);
    color: var(--ink3);
    letter-spacing: 0.04em;
  }

  /* ── PROJECTS ── */
  #projects {
    padding: 8rem 4rem;
    background: var(--white);
    border-top: 1px solid var(--border);
    border-bottom: 1px solid var(--border);
  }

  .projects-list { display: flex; flex-direction: column; gap: 1px; background: var(--border); border: 1px solid var(--border); }

  .project-item {
    background: var(--white);
    padding: 2.5rem;
    display: grid;
    grid-template-columns: 1fr auto;
    gap: 2rem;
    align-items: center;
    transition: background 0.2s;
    cursor: pointer;
  }
  .project-item:hover { background: var(--bg); }

  .project-meta {
    display: flex; align-items: center; gap: 1rem;
    margin-bottom: 0.75rem;
  }
  .project-num {
    font-family: var(--font-mono);
    font-size: 0.7rem;
    color: var(--ink3);
  }
  .project-cat {
    font-size: 0.72rem;
    font-weight: 600;
    letter-spacing: 0.1em;
    text-transform: uppercase;
    color: var(--accent);
    background: rgba(200,96,42,0.08);
    padding: 0.2rem 0.65rem;
  }

  .project-name {
    font-family: var(--font-display);
    font-size: 1.6rem;
    font-weight: 400;
    margin-bottom: 0.6rem;
    color: var(--ink);
  }

  .project-desc {
    font-size: 0.9rem;
    color: var(--ink3);
    max-width: 560px;
    line-height: 1.7;
    margin-bottom: 1rem;
  }

  .project-stack {
    display: flex; gap: 0.5rem; flex-wrap: wrap;
  }
  .stack-tag {
    font-family: var(--font-mono);
    font-size: 0.7rem;
    color: var(--ink3);
    padding: 0.2rem 0.6rem;
    border: 1px solid var(--border);
  }

  .project-arrow {
    font-size: 1.5rem;
    color: var(--ink3);
    transition: color 0.2s, transform 0.2s;
  }
  .project-item:hover .project-arrow { color: var(--accent); transform: translate(4px, -4px); }

  /* ── CONTACT ── */
  #contact {
    padding: 8rem 4rem;
    background: var(--ink);
    color: var(--white);
  }

  #contact .section-title { color: var(--white); }
  #contact .section-line { background: rgba(255,255,255,0.1); }
  #contact .section-num { color: var(--accent); }

  .contact-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 6rem;
    align-items: start;
  }

  .contact-intro {
    font-family: var(--font-display);
    font-size: 1.8rem;
    line-height: 1.4;
    font-weight: 400;
    color: rgba(250,250,247,0.9);
    margin-bottom: 2rem;
  }

  .contact-intro em { font-style: italic; color: var(--accent); }

  .contact-sub {
    font-size: 0.95rem;
    color: rgba(250,250,247,0.5);
    line-height: 1.8;
    margin-bottom: 2.5rem;
  }

  .contact-links { display: flex; flex-direction: column; gap: 0.75rem; }
  .contact-link {
    display: flex; align-items: center; gap: 1rem;
    color: rgba(250,250,247,0.7);
    text-decoration: none;
    font-size: 0.9rem;
    transition: color 0.2s;
    padding: 0.75rem 0;
    border-bottom: 1px solid rgba(255,255,255,0.06);
  }
  .contact-link:hover { color: var(--accent); }
  .contact-link-icon {
    width: 36px; height: 36px;
    background: rgba(255,255,255,0.06);
    display: flex; align-items: center; justify-content: center;
    font-size: 1rem;
    flex-shrink: 0;
  }

  .contact-form { display: flex; flex-direction: column; gap: 1.25rem; }

  .form-field { display: flex; flex-direction: column; gap: 0.5rem; }
  .form-field label {
    font-family: var(--font-mono);
    font-size: 0.72rem;
    color: rgba(250,250,247,0.4);
    text-transform: uppercase;
    letter-spacing: 0.1em;
  }
  .form-field input,
  .form-field textarea {
    background: rgba(255,255,255,0.05);
    border: 1px solid rgba(255,255,255,0.1);
    color: var(--white);
    padding: 0.85rem 1rem;
    font-family: var(--font-sans);
    font-size: 0.9rem;
    outline: none;
    transition: border-color 0.2s;
    resize: none;
  }
  .form-field input:focus,
  .form-field textarea:focus { border-color: var(--accent); }
  .form-field input::placeholder,
  .form-field textarea::placeholder { color: rgba(255,255,255,0.2); }

  .btn-send {
    display: inline-flex; align-items: center; gap: 0.75rem;
    background: var(--accent);
    color: var(--white);
    padding: 1rem 2.5rem;
    font-family: var(--font-sans);
    font-size: 0.88rem;
    font-weight: 600;
    letter-spacing: 0.06em;
    border: none; cursor: pointer;
    align-self: flex-start;
    transition: opacity 0.2s, transform 0.2s;
  }
  .btn-send:hover { opacity: 0.88; transform: translateY(-2px); }

  /* ── FOOTER ── */
  footer {
    background: #111;
    padding: 2rem 4rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-top: 1px solid rgba(255,255,255,0.05);
  }
  footer span {
    font-family: var(--font-mono);
    font-size: 0.75rem;
    color: rgba(255,255,255,0.25);
  }
  footer a {
    font-family: var(--font-mono);
    font-size: 0.75rem;
    color: var(--accent);
    text-decoration: none;
  }

  /* ── ANIMATIONS ── */
  @keyframes fadeUp {
    from { opacity: 0; transform: translateY(28px); }
    to   { opacity: 1; transform: translateY(0); }
  }

  .anim { opacity: 0; }
  .anim.visible { animation: fadeUp 0.7s ease forwards; }
  .anim-d1 { animation-delay: 0.1s; }
  .anim-d2 { animation-delay: 0.2s; }
  .anim-d3 { animation-delay: 0.3s; }
  .anim-d4 { animation-delay: 0.4s; }
  .anim-d5 { animation-delay: 0.5s; }

  /* Hero immediate */
  .hero-tag   { animation: fadeUp 0.6s ease 0.2s both; }
  .hero-name  { animation: fadeUp 0.6s ease 0.35s both; }
  .hero-desc  { animation: fadeUp 0.6s ease 0.5s both; }
  .hero-cta   { animation: fadeUp 0.6s ease 0.65s both; }
  .hero-right { animation: fadeUp 0.7s ease 0.4s both; }

  /* ── RESPONSIVE ── */
  @media (max-width: 900px) {
    nav { padding: 1rem 1.5rem; }
    .nav-links { gap: 1.5rem; }
    #hero { grid-template-columns: 1fr; min-height: auto; padding: 6rem 1.5rem 3rem; }
    .hero-left { padding: 2rem 0; }
    .hero-right { display: none; }
    #about, #skills, #projects, #contact { padding: 5rem 1.5rem; }
    .about-grid, .contact-grid { grid-template-columns: 1fr; gap: 3rem; }
    .skills-grid { grid-template-columns: 1fr 1fr; }
    .project-item { grid-template-columns: 1fr; }
    footer { flex-direction: column; gap: 0.5rem; }
  }
</style>
</head>
<body>

<!-- NAV -->
<nav>
  <div class="nav-logo"><span>AG</span> / Portfolio</div>
  <ul class="nav-links">
    <li><a href="#about">About</a></li>
    <li><a href="#skills">Skills</a></li>
    <li><a href="#projects">Projects</a></li>
    <li><a href="#contact">Contact</a></li>
  </ul>
</nav>

<!-- HERO -->
<section id="hero">
  <div class="hero-left">
    <div class="hero-tag">Full-Stack Developer · Casablanca, Morocco</div>
    <h1 class="hero-name">
      Akram Ali<br>
      <em>Goulahssen</em>
    </h1>
    <p class="hero-desc">
      A passionate developer from Casablanca, crafting clean web experiences —
      from pixel-perfect interfaces to solid backend logic.
    </p>
    <div class="hero-cta">
      <a href="#projects" class="btn-primary">View Projects ↗</a>
      <a href="#contact" class="btn-secondary">Get in Touch</a>
    </div>
  </div>
  <div class="hero-right">
    <div class="hero-visual">
      <div class="avatar-placeholder">👨‍💻</div>
      <div class="hero-visual-label">Akram Goulahssen / 2025</div>
      <div class="hero-stats">
        <div class="stat-item">
          <span class="stat-num">2+</span>
          <span class="stat-label">Projects</span>
        </div>
        <div class="stat-item">
          <span class="stat-num">5+</span>
          <span class="stat-label">Technologies</span>
        </div>
        <div class="stat-item">
          <span class="stat-num">∞</span>
          <span class="stat-label">Passion</span>
        </div>
      </div>
      <div class="hero-decor"></div>
      <div class="hero-decor2"></div>
    </div>
  </div>
</section>

<!-- ABOUT -->
<section id="about">
  <div class="section-header anim anim-d1">
    <span class="section-num">01</span>
    <h2 class="section-title">About Me</h2>
    <div class="section-line"></div>
  </div>
  <div class="about-grid">
    <div class="about-text anim anim-d2">
      <p>
        I'm <strong>Akram Ali Goulahssen</strong>, a self-driven developer based in <strong>Casablanca, Morocco</strong>.
        I enjoy building things for the web — whether it's a clean user interface,
        a robust API, or a full product from scratch.
      </p>
      <p>
        I started coding out of curiosity and it quickly became my craft.
        I work with a range of technologies — from HTML, CSS and JavaScript on the frontend,
        to Python and Node.js on the backend — always aiming for code that is clean,
        functional, and thoughtfully designed.
      </p>
      <div class="about-highlight">
        "I don't just write code — I build experiences that make sense."
      </div>
      <p>
        Currently focused on growing my skills, building meaningful projects,
        and making my work visible to the world.
      </p>
    </div>
    <div class="anim anim-d3">
      <div class="about-details">
        <div class="detail-row">
          <span class="detail-key">Name</span>
          <span class="detail-val">Akram Ali Goulahssen</span>
        </div>
        <div class="detail-row">
          <span class="detail-key">Location</span>
          <span class="detail-val">Casablanca, Morocco 🇲🇦</span>
        </div>
        <div class="detail-row">
          <span class="detail-key">Focus</span>
          <span class="detail-val">Full-Stack Development</span>
        </div>
        <div class="detail-row">
          <span class="detail-key">GitHub</span>
          <span class="detail-val"><a href="https://github.com/mr-goulahssen" target="_blank">@mr-goulahssen</a></span>
        </div>
        <div class="detail-row">
          <span class="detail-key">Stack</span>
          <span class="detail-val">HTML · CSS · JS · React · Node · Python</span>
        </div>
        <div class="detail-row">
          <span class="detail-key">Status</span>
          <span class="detail-val" style="color:#2a6cc8; font-weight:600;">● Open to opportunities</span>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- SKILLS -->
<section id="skills">
  <div class="section-header anim anim-d1">
    <span class="section-num">02</span>
    <h2 class="section-title">Skills</h2>
    <div class="section-line"></div>
  </div>
  <div class="skills-grid">
    <div class="skill-card anim anim-d1">
      <span class="skill-icon">🎨</span>
      <div class="skill-name">Frontend</div>
      <div class="skill-tags">
        <span class="skill-tag">HTML5</span>
        <span class="skill-tag">CSS3</span>
        <span class="skill-tag">JavaScript</span>
        <span class="skill-tag">React.js</span>
        <span class="skill-tag">Responsive Design</span>
      </div>
    </div>
    <div class="skill-card anim anim-d2">
      <span class="skill-icon">⚙️</span>
      <div class="skill-name">Backend</div>
      <div class="skill-tags">
        <span class="skill-tag">Node.js</span>
        <span class="skill-tag">Python</span>
        <span class="skill-tag">REST APIs</span>
        <span class="skill-tag">Express.js</span>
      </div>
    </div>
    <div class="skill-card anim anim-d3">
      <span class="skill-icon">🛠️</span>
      <div class="skill-name">Tools & Other</div>
      <div class="skill-tags">
        <span class="skill-tag">Git</span>
        <span class="skill-tag">GitHub</span>
        <span class="skill-tag">VS Code</span>
        <span class="skill-tag">Linux</span>
        <span class="skill-tag">npm</span>
      </div>
    </div>
  </div>
</section>

<!-- PROJECTS -->
<section id="projects">
  <div class="section-header anim anim-d1">
    <span class="section-num">03</span>
    <h2 class="section-title">Projects</h2>
    <div class="section-line"></div>
  </div>
  <div class="projects-list">
    <div class="project-item anim anim-d2" onclick="window.open('https://github.com/mr-goulahssen','_blank')">
      <div>
        <div class="project-meta">
          <span class="project-num">001</span>
          <span class="project-cat">Encyclopedia · Web App</span>
        </div>
        <h3 class="project-name">Mi-Search</h3>
        <p class="project-desc">
          A free multilingual encyclopedia platform built with React.
          Features search, article writing, admin dashboard, and support for English, Arabic, and French.
        </p>
        <div class="project-stack">
          <span class="stack-tag">React.js</span>
          <span class="stack-tag">JavaScript</span>
          <span class="stack-tag">i18n</span>
          <span class="stack-tag">Dark Mode</span>
        </div>
      </div>
      <div class="project-arrow">↗</div>
    </div>

    <div class="project-item anim anim-d3" onclick="window.open('https://github.com/mr-goulahssen','_blank')">
      <div>
        <div class="project-meta">
          <span class="project-num">002</span>
          <span class="project-cat">Education · Full-Stack</span>
        </div>
        <h3 class="project-name">Lycée Project</h3>
        <p class="project-desc">
          A full-stack web application built for a high school context,
          combining frontend design with backend logic.
        </p>
        <div class="project-stack">
          <span class="stack-tag">HTML/CSS</span>
          <span class="stack-tag">JavaScript</span>
          <span class="stack-tag">Python</span>
          <span class="stack-tag">Node.js</span>
        </div>
      </div>
      <div class="project-arrow">↗</div>
    </div>
  </div>
</section>

<!-- CONTACT -->
<section id="contact">
  <div class="section-header anim anim-d1">
    <span class="section-num">04</span>
    <h2 class="section-title">Contact</h2>
    <div class="section-line" style="background:rgba(255,255,255,0.1)"></div>
  </div>
  <div class="contact-grid">
    <div class="anim anim-d2">
      <p class="contact-intro">
        Have a project in mind?<br>
        Let's <em>build something</em> together.
      </p>
      <p class="contact-sub">
        I'm currently open to freelance projects, collaborations,
        and full-time opportunities. Don't hesitate to reach out.
      </p>
      <div class="contact-links">
        <a href="https://github.com/mr-goulahssen" target="_blank" class="contact-link">
          <div class="contact-link-icon">⌥</div>
          github.com/mr-goulahssen
        </a>
        <a href="mailto:akramaliglh@gmail.com" class="contact-link">
          <div class="contact-link-icon">✉</div>
          akramaliglh@gmail.com
        </a>
        <a href="https://www.linkedin.com/in/akram-ali-goulahsen-9a6bb433b/" target="_blank" class="contact-link">
          <div class="contact-link-icon">in</div>
          linkedin.com/in/akram-ali-goulahsen
        </a>
      </div>
    </div>
    <div class="anim anim-d3">
      <div class="contact-form">
        <div class="form-field">
          <label>Your Name</label>
          <input type="text" placeholder="John Doe"/>
        </div>
        <div class="form-field">
          <label>Email Address</label>
          <input type="email" placeholder="john@example.com"/>
        </div>
        <div class="form-field">
          <label>Message</label>
          <textarea rows="5" placeholder="Tell me about your project..."></textarea>
        </div>
        <button class="btn-send" onclick="alert('Message sent! ✓')">Send Message ↗</button>
      </div>
    </div>
  </div>
</section>

<!-- FOOTER -->
<footer>
  <span>© 2026 Akram Ali Goulahssen — All rights reserved</span>
  <a href="https://github.com/mr-goulahssen" target="_blank">@mr-goulahssen</a>
</footer>

<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>
  // Intersection Observer for scroll animations
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(el => {
      if (el.isIntersecting) {
        el.target.classList.add('visible');
        observer.unobserve(el.target);
      }
    });
  }, { threshold: 0.12 });

  document.querySelectorAll('.anim').forEach(el => observer.observe(el));

  // Smooth active nav highlight
  const sections = document.querySelectorAll('section[id]');
  const navLinks = document.querySelectorAll('.nav-links a');

  window.addEventListener('scroll', () => {
    let current = '';
    sections.forEach((section) => {
      const sectionTop = section.offsetTop;
      if (pageYOffset >= sectionTop - 200) { current = section.getAttribute('id'); }
    });

    navLinks.forEach(link => {
      link.classList.remove('active');
      if (link.getAttribute('href').slice(1) === current) {
        link.classList.add('active');
      }
    });
  });
</script>
</body>
</html>
