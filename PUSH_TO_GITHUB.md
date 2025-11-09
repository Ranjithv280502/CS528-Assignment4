# Quick Guide: Push to GitHub

Since you're logged into GitHub, follow these steps:

## Step 1: Configure Git

Run these commands (replace with your info):

```powershell
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

**Important:** Use the same email as your GitHub account!

## Step 2: Commit Your Files

```powershell
git commit -m "Initial commit - PIR assignment with SHEEP"
```

## Step 3: Create GitHub Repository

1. Go to https://github.com
2. Click the **"+"** icon → **"New repository"**
3. Name it: `cs528-pir-assignment` (or any name)
4. Choose **Public** or **Private**
5. **DON'T** check "Initialize with README"
6. Click **"Create repository"**

## Step 4: Connect and Push

After creating the repository, GitHub will show you commands. Use these:

```powershell
# Replace YOUR_USERNAME with your GitHub username
# Replace REPO_NAME with your repository name
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**Note:** Since you're logged in through GitHub, authentication should work automatically!

---

## Quick Commands (Copy & Paste)

```powershell
# 1. Configure Git (replace with your info)
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# 2. Commit
git commit -m "Initial commit - PIR assignment with SHEEP"

# 3. Add remote (replace YOUR_USERNAME and REPO_NAME)
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# 4. Push
git branch -M main
git push -u origin main
```

---

## After Pushing

Once your code is on GitHub:
1. Go to your repository
2. Click **"Code"** → **"Codespaces"**
3. Click **"Create codespace on main"**
4. Build the SHEEP server in Codespaces
5. Expose port 34568
6. Connect from your local machine

Let me know if you need help with any step! 🚀

