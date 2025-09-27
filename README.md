# Data Processing and Visualization System

A comprehensive MERN stack application for automated data extraction, transformation, and merging from complex customer data files. The system supports multiple file formats, provides real-time processing updates, and includes an AI-powered chatbot for data analysis.

## 🚀 Features

### Core Functionality
- **Multi-format File Processing**: Support for JSON, CSV, XLSX, XML, and PDF files
- **Real-time Processing**: Live updates via WebSocket connections
- **Data Validation**: Comprehensive validation with quality scoring
- **Data Merging**: Intelligent merging of customer data from multiple sources
- **Export Capabilities**: Download processed data in JSON and CSV formats

### User Interface
- **Modern Dashboard**: Interactive charts and metrics visualization
- **File Upload**: Drag-and-drop interface with progress tracking
- **Data Viewer**: Searchable, paginated table with filtering options
- **AI Chatbot**: Natural language interface for data queries
- **Responsive Design**: Mobile-friendly interface using Tailwind CSS

### Security & Authentication
- **JWT Authentication**: Secure user authentication and authorization
- **Rate Limiting**: Protection against abuse
- **Input Validation**: Comprehensive server-side validation
- **Error Handling**: Robust error logging and user feedback

## 🛠️ Tech Stack

### Backend
- **Node.js** with Express.js
- **MongoDB** with Mongoose ODM
- **Socket.io** for real-time communication
- **Multer** for file uploads
- **JWT** for authentication
- **Natural** for NLP processing

### Frontend
- **React.js** with functional components and hooks
- **React Router** for navigation
- **Tailwind CSS** for styling
- **Recharts** for data visualization
- **React Dropzone** for file uploads
- **Socket.io Client** for real-time updates
- **Axios** for API communication

### Data Processing Libraries
- **csv-parser** for CSV file processing
- **xlsx** for Excel file processing
- **xml2js** for XML file processing
- **pdf-parse** for PDF text extraction

## 📁 Project Structure

```
data-processing-visualization/
├── client/                 # React frontend
│   ├── public/
│   ├── src/
│   │   ├── components/     # Reusable components
│   │   ├── contexts/       # React contexts
│   │   ├── pages/          # Page components
│   │   └── App.js
│   └── package.json
├── server/                 # Node.js backend
│   ├── models/            # MongoDB models
│   ├── routes/            # API routes
│   ├── utils/             # Utility functions
│   ├── uploads/           # File upload directory
│   └── index.js
├── sample_data/           # Sample data files
└── package.json           # Root package.json
```

## 🚀 Getting Started

### Prerequisites
- Node.js (v14 or higher)
- MongoDB (v4.4 or higher)
- npm or yarn

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd data-processing-visualization
   ```

2. **Install dependencies**
   ```bash
   npm run install-all
   ```

3. **Set up environment variables**
   ```bash
   cd server
   cp env.example .env
   ```
   
   Update the `.env` file with your configuration:
   ```env
   NODE_ENV=development
   PORT=5000
   CLIENT_URL=http://localhost:3000
   MONGODB_URI=mongodb://localhost:27017/data-processing
   JWT_SECRET=your-super-secret-jwt-key
   ```

4. **Start MongoDB**
   ```bash
   mongod
   ```

5. **Run the application**
   ```bash
   npm run dev
   ```

   This will start both the backend server (port 5000) and frontend development server (port 3000).

## 📊 Sample Data

The `sample_data/` directory contains example files in different formats:

- `customer_master_data.json` - Customer master data in JSON format
- `retail_transaction.csv` - Retail transaction data in CSV format
- `customer_credit_card_transaction.xml` - Credit card transactions in XML format
- `upi_transactions.csv` - UPI transaction data in CSV format

## 🔧 API Endpoints

### Authentication
- `POST /api/auth/register` - User registration
- `POST /api/auth/login` - User login
- `GET /api/auth/me` - Get current user

### File Management
- `POST /api/files/upload` - Upload files
- `GET /api/files/files` - Get user's files
- `GET /api/files/files/:id` - Get file details
- `DELETE /api/files/files/:id` - Delete file

### Data Processing
- `GET /api/data/processed` - Get processed data with pagination
- `GET /api/data/customer/:id` - Get customer details
- `GET /api/data/stats` - Get data statistics
- `GET /api/data/export` - Export data

### Dashboard
- `GET /api/dashboard/metrics` - Get dashboard metrics
- `GET /api/dashboard/quality-trends` - Get quality trends
- `GET /api/dashboard/file-distribution` - Get file distribution

### Chat Bot
- `POST /api/chat/chat` - Send chat message
- `GET /api/chat/history/:sessionId` - Get chat history

## 🤖 Chat Bot Features

The AI chatbot supports natural language queries for:

- **Customer Search**: "Find customer ABC123"
- **Data Statistics**: "Show me data summary"
- **File Information**: "What files have been processed?"
- **Quality Analysis**: "How is the data quality?"
- **Transaction Analysis**: "Analyze transaction data"

## 📈 Data Visualization

The dashboard provides comprehensive visualizations:

- **Overview Metrics**: Total files, records, customers, and quality scores
- **Processing Status**: Real-time status of file processing
- **Quality Trends**: Time-series chart of data quality
- **File Distribution**: Pie chart of file types
- **Quality Distribution**: Breakdown of high/medium/low quality records

## 🔒 Security Features

- **JWT Authentication**: Secure token-based authentication
- **Rate Limiting**: Prevents API abuse
- **Input Validation**: Server-side validation for all inputs
- **File Type Validation**: Restricts uploads to allowed formats
- **Error Handling**: Comprehensive error logging and user feedback

## 🚀 Deployment

### Production Build

1. **Build the frontend**
   ```bash
   cd client
   npm run build
   ```

2. **Set production environment variables**
   ```bash
   NODE_ENV=production
   MONGODB_URI=your-production-mongodb-uri
   JWT_SECRET=your-production-jwt-secret
   ```

3. **Start the production server**
   ```bash
   cd server
   npm start
   ```

### Docker Deployment (Optional)

Create a `Dockerfile` for containerized deployment:

```dockerfile
FROM node:16-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 5000
CMD ["npm", "start"]
```

## 🧪 Testing

Run tests for both frontend and backend:

```bash
# Backend tests
cd server
npm test

# Frontend tests
cd client
npm test
```

## 📝 Usage Examples

### Upload Files
1. Navigate to the Upload Files page
2. Drag and drop files or click to select
3. Monitor real-time processing status
4. View processing results and quality scores

### Analyze Data
1. Use the Data Viewer to browse processed records
2. Apply filters to find specific customers or data types
3. Export filtered results in JSON or CSV format
4. View detailed customer information in modal dialogs

### Chat with AI
1. Go to the Chat Bot page
2. Ask natural language questions about your data
3. Use quick actions for common queries
4. Get intelligent insights and analysis

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests for new functionality
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Support

For support and questions:
- Create an issue in the repository
- Check the documentation
- Review the sample data files for format examples

## 🔮 Future Enhancements

- **Machine Learning Integration**: Predictive analytics and pattern recognition
- **Advanced NLP**: More sophisticated chatbot capabilities
- **Real-time Collaboration**: Multi-user editing and sharing
- **API Rate Limiting**: Advanced rate limiting strategies
- **Data Encryption**: End-to-end encryption for sensitive data
- **Cloud Storage**: Integration with cloud storage providers
- **Advanced Analytics**: More sophisticated data analysis tools

---

Built with ❤️ using the MERN stack for automated data processing and visualization.
