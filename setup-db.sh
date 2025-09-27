#!/bin/bash

# Database and Environment Setup Script
echo "🔧 Setting up database connection and environment..."

# Create .env file from template
if [ ! -f server/.env ]; then
    cp server/env.example server/.env
    echo "✅ Created server/.env file from template"
    echo "⚠️  Please update server/.env with your MongoDB credentials"
else
    echo "✅ server/.env file already exists"
fi

# Create logs directory
mkdir -p server/logs
echo "📁 Created logs directory"

# Create uploads directory
mkdir -p server/uploads
echo "📁 Created uploads directory"

echo ""
echo "🎉 Setup completed!"
echo ""
echo "Next steps:"
echo "1. Update server/.env with your MongoDB URI and JWT secret"
echo "2. Start MongoDB service"
echo "3. Run: cd server && npm install && npm run dev"
echo ""
echo "Example MongoDB URIs:"
echo "  Local: mongodb://localhost:27017/data-processing"
echo "  Atlas: mongodb+srv://username:password@cluster.mongodb.net/data-processing"
