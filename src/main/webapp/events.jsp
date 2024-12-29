<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
      <!DOCTYPE html>
      <html>
      
      <head>
          <title>Events</title>
          <link href="css/styles.css" rel="stylesheet">
      </head>
      
      <body>
          <div class="nav-bar">
              <div class="nav-logo">
                  <h1>Event Management System</h1>
              </div>
              <div class="nav-link-profile">
                  <a href="profile"> <img src="assets/images/profile.png" alt="Italian Trulli"></a>
              </div>
          </div>
      
          <div class="home-content-main-container">
              <div class="home-content-container">
                  <h2>Events</h2>
                  <a class="create-event-btn" href="createEvent.jsp">Create Event</a>
                  <!-- Display a list of events here, you can use a loop to iterate through events -->
                  <div class="event-cards-container">
                  <c:forEach var="event" items="${events}">
                      
                         <div class="event-card">
                          <h3>${event.eventname}</h3>
                          <p>Date: ${event.eventDate} </p>
                          <p> Time: ${event.eventTime}</p>
                          <a href="EventDetailsServlet?eventId=${event.id}">View Details</a>
                      </div> 
                      
                      
                  </c:forEach>
                  </div>
              </div>
          </div>
      
      
      </body>
      
      </html>