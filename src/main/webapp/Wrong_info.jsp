<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Incorrect Information — Life Tree Hospital</title>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&family=Open+Sans:wght@400;600&display=swap"
    rel="stylesheet">
  <style>
    :root {
      --bg1: #f8fbfb;
      --card: #ffffff;
      --accent: #ec5e27;
      /* orange accent (change to match your site) */
      --muted: #52616e;
      --danger: #d9534f;
      --shadow: 0 10px 30px rgba(0, 0, 0, 0.12);
      --radius: 12px;
      --maxw: 920px;
    }

    * {
      box-sizing: border-box
    }

    html,
    body {
      height: 100%;
      margin: 0;
      font-family: 'Open Sans', system-ui, Arial, sans-serif;
      background: linear-gradient(135deg, #f0f8ff 0%, #f8fbfb 100%);
      color: #122;
      -webkit-font-smoothing: antialiased
    }

    .wrap {
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 32px;
    }

    .card {
      width: 100%;
      max-width: var(--maxw);
      background: var(--card);
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      display: grid;
      grid-template-columns: 1fr 1fr;
      overflow: hidden;
    }

    /* left visual */
    .visual {
      position: relative;
      padding: 28px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      gap: 18px;
      background-image: url('https://www.elegantthemes.com/blog/wp-content/uploads/2020/07/000-HTTP-Error-400.png');
      background-size: cover;
      background-position: center;
      color: #fff;
    }

    .visual::before {
      content: "";
      position: absolute;
      inset: 0;
      background: linear-gradient(180deg, rgba(46, 125, 50, 0.22), rgba(123, 31, 162, 0.20));
    }

    .brand {
      position: relative;
      z-index: 1;
      display: flex;
      gap: 12px;
      align-items: center;
      font-weight: 700;
      font-family: 'Montserrat', sans-serif;
      font-size: 1.1rem;
    }

    .brand .leaf {
      width: 44px;
      height: 44px;
      border-radius: 10px;
      display: grid;
      place-items: center;
      background: rgba(255, 255, 255, 0.12);
      font-size: 20px;
    }

    .visual p {
      position: relative;
      z-index: 1;
      margin: 0;
      font-size: 0.95rem;
      max-width: 220px;
      line-height: 1.3
    }

    /* right content */
    .content {
      padding: 36px 36px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      gap: 18px;
    }

    .eyebrow {
      font-size: 0.85rem;
      text-transform: uppercase;
      letter-spacing: 0.08em;
      color: var(--muted);
      font-weight: 600;
    }

    .icon-wrap {
      width: 72px;
      height: 72px;
      border-radius: 14px;
      display: grid;
      place-items: center;
      background: linear-gradient(180deg, rgba(255, 230, 230, 1), rgba(255, 245, 245, 1));
      border: 1px solid rgba(217, 83, 79, 0.06);
    }

    .title {
      margin: 0;
      font-family: 'Montserrat', sans-serif;
      font-size: 1.5rem;
      color: #1b2a33;
    }

    .message {
      margin: 0;
      color: var(--muted);
      line-height: 1.45;
      font-size: 0.98rem;
    }

    .tips {
      margin: 0;
      color: #41535a;
      font-size: 0.92rem;
      padding-left: 8px;
    }

    /* CTAs */
    .actions {
      display: flex;
      gap: 12px;
      margin-top: 6px;
      flex-wrap: wrap;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 18px;
      border-radius: 999px;
      text-decoration: none;
      font-weight: 700;
      border: 0;
      cursor: pointer;
    }

    .btn-primary {
      background: linear-gradient(90deg, #ff8a65 0%, var(--accent) 100%);
      color: #fff;
      box-shadow: 0 8px 20px rgba(236, 94, 39, 0.14);
    }

    .btn-ghost {
      background: transparent;
      border: 2px solid rgba(18, 34, 42, 0.06);
      color: var(--muted);
      padding: 10px 14px;
      border-radius: 10px;
      text-decoration: none;
      font-weight: 600;
    }

    .small-note {
      font-size: 0.86rem;
      color: #6b7a82
    }

    /* layout responsiveness */
    @media (max-width:880px) {
      .card {
        grid-template-columns: 1fr;
      }

      .visual {
        padding: 20px;
        min-height: 160px;
        align-items: flex-start
      }

      .content {
        padding: 24px;
      }

      .brand span {
        display: none
      }
    }

    @media (max-width:420px) {
      .content {
        padding: 18px;
        gap: 12px
      }

      .title {
        font-size: 1.25rem
      }

      .icon-wrap {
        width: 60px;
        height: 60px
      }

      .btn {
        padding: 10px 14px;
        font-size: 0.95rem
      }
    }

    /* small decorative list */
    .help-list {
      display: grid;
      gap: 8px;
      margin-top: 6px
    }

    .help-list li {
      color: #40555b;
      font-size: 0.92rem;
      list-style: none;
      display: flex;
      gap: 8px;
      align-items: flex-start
    }

    .help-list li::before {
      content: "•";
      color: var(--accent);
      font-weight: 700;
      margin-top: 2px
    }

    /* accessible focus */
    a:focus,
    button:focus {
      outline: 3px solid rgba(123, 31, 162, 0.12);
      outline-offset: 3px;
      border-radius: 8px
    }
  </style>
</head>

<body>
  <div class="wrap" role="main">
    <div class="card" aria-labelledby="errTitle">
      <aside class="visual" aria-hidden="true">
        <div class="brand">
        </div>
      </aside>

      <section class="content">
        <div style="display:flex;align-items:center;gap:14px">
          <div class="icon-wrap" aria-hidden="true">
            <!-- simple inline SVG icon (no external) -->
            <svg width="34" height="34" viewBox="0 0 24 24" fill="none" aria-hidden="true"
              xmlns="http://www.w3.org/2000/svg">
              <path d="M12 2C6.48 2 2 6.48 2 12c0 5.52 4.48 10 10 10s10-4.48 10-10C22 6.48 17.52 2 12 2z"
                stroke="#d9534f" stroke-width="1.2" fill="none" />
              <path d="M12 8v5" stroke="#d9534f" stroke-width="1.6" stroke-linecap="round" />
              <circle cx="12" cy="16.5" r="0.8" fill="#d9534f" />
            </svg>
          </div>

          <div>
            <div class="eyebrow">Login failed</div>
            <h1 id="errTitle" class="title">Incorrect information entered</h1>
          </div>
        </div>

        <p class="message">We couldn't sign you in because the email, username or password you entered doesn't match our
          records. Double-check your details and try again.</p>

        <ul class="help-list" aria-hidden="false">
          <li>Make sure Caps Lock is off.</li>
          <li>Use the email address you registered with.</li>
          <li>If you forgot your password, you can reset it.</li>
        </ul>

        <div class="actions" role="group" aria-label="actions">
          <!-- Use anchors styled like buttons (no JS) -->
          <a class="btn btn-primary" href="Login_Page.jsp">Try Again</a>
          <a class="btn btn-ghost" href="Forget_password.jsp">Forgot Password</a>
          <a class="btn btn-ghost" href="Sign_up.jsp">Create Account</a>
        </div>

        <p class="small-note">If you still see this error after checking the details, contact <a
            href="mailto:support@lifetree.example">support@lifetree.example</a>.</p>
      </section>
    </div>
  </div>
</body>

</html>