#!/bin/bash

# Data Processing and Visualization System Setup Script
# This script helps set up the development environment

echo "🚀 Setting up Data Processing and Visualization System..."

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js (v14 or higher) first."
    exit 1
fi

# Check if MongoDB is installed
if ! command -v mongod &> /dev/null; then
    echo "⚠️  MongoDB is not installed. Please install MongoDB first."
    echo "   Visit: https://docs.mongodb.com/manual/installation/"
fi

# Check Node.js version
NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 14 ]; then
    echo "❌ Node.js version 14 or higher is required. Current version: $(node -v)"
    exit 1
fi

echo "✅ Node.js $(node -v) detected"

# Install root dependencies
echo "📦 Installing root dependencies..."
npm install

# Install server dependencies
echo "📦 Installing server dependencies..."
cd server
npm install

# Create uploads directory
mkdir -p uploads
echo "📁 Created uploads directory"

# Copy environment file
if [ ! -f .env ]; then
    cp env.example .env
    echo "📄 Created .env file from template"
    echo "⚠️  Please update the .env file with your configuration"
else
    echo "✅ .env file already exists"
fi

cd ..

# Install client dependencies
echo "📦 Installing client dependencies..."
cd client
npm install

# Create public directory if it doesn't exist
mkdir -p public

cd ..

echo ""
echo "🎉 Setup completed successfully!"
echo ""
echo "Next steps:"
echo "1. Update server/.env with your MongoDB URI and JWT secret"
echo "2. Start MongoDB: mongod"
echo "3. Run the application: npm run dev"
echo ""
echo "The application will be available at:"
echo "  Frontend: http://localhost:3000"
echo "  Backend:  http://localhost:5000"
echo ""
echo "Sample data files are available in the sample_data/ directory"
echo ""
echo "Happy coding! 🚀"
