@echo off
echo 🚀 Setting up Data Processing and Visualization System...

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js is not installed. Please install Node.js (v14 or higher) first.
    pause
    exit /b 1
)

echo ✅ Node.js detected
node --version

REM Check if MongoDB is installed
mongod --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ⚠️  MongoDB is not installed. Please install MongoDB first.
    echo    Visit: https://docs.mongodb.com/manual/installation/
)

REM Install root dependencies
echo 📦 Installing root dependencies...
call npm install

REM Install server dependencies
echo 📦 Installing server dependencies...
cd server
call npm install

REM Create uploads directory
if not exist uploads mkdir uploads
echo 📁 Created uploads directory

REM Copy environment file
if not exist .env (
    copy env.example .env
    echo 📄 Created .env file from template
    echo ⚠️  Please update the .env file with your configuration
) else (
    echo ✅ .env file already exists
)

cd ..

REM Install client dependencies
echo 📦 Installing client dependencies...
cd client
call npm install

REM Create public directory if it doesn't exist
if not exist public mkdir public

cd ..

echo.
echo 🎉 Setup completed successfully!
echo.
echo Next steps:
echo 1. Update server/.env with your MongoDB URI and JWT secret
echo 2. Start MongoDB: mongod
echo 3. Run the application: npm run dev
echo.
echo The application will be available at:
echo   Frontend: http://localhost:3000
echo   Backend:  http://localhost:5000
echo.
echo Sample data files are available in the sample_data/ directory
echo.
echo Happy coding! 🚀
pause
