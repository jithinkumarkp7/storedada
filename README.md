# Next.js App (App Router) with Tailwind, TypeScript, ESLint, CI/CD, Docker

This project is a modern, production-ready Next.js application built with:

- ✅ App Router
- ✅ Tailwind CSS
- ✅ TypeScript
- ✅ ESLint
- ✅ npm
- ✅ Docker support
- ✅ GitHub Actions (CI/CD)
- ✅ Component-based architecture
- ✅ Modular structure with `lib`, `utils`, `styles`, and `types`

---

## 📁 Folder Structure

src/
├── app/ # App router pages
├── components/ # Reusable UI components
├── lib/ # API, auth, or domain-specific logic
├── styles/ # Global styles, Tailwind layers
├── types/ # Shared TypeScript types
├── utils/ # General utility/helper functions


---

## 🚀 Getting Started

### Install dependencies

<pre> npm install</pre>

### Run locally

<pre> npm dev</pre>

The app will be available at http://localhost:3000.

### Linting
<pre> npm lint</pre>


### 🐳 Docker Setup

### Build Docker image
<pre>docker build -t storedada</pre>

### Run the container
<pre>docker run -p 3000:3000 storedada</pre>

The app will be accessible at http://localhost:3000.
ℹ️ Make sure port 3000 is available locally.

### 📝 Scripts
<pre>
npm dev        # Run development server
npm build      # Build production app
npm start      # Start production server
npm lint       # Lint code
</pre>







