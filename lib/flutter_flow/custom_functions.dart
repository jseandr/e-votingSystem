import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? newCustomFunction(String email) {
  try {
    // Check if the email is from the specific domain
    if (email.endsWith("@bicol-u.edu.ph")) {
      // You can add custom logic here if needed

      return "Registration successful!";
    } else {
      // Reject registration if the email domain is not allowed
      return "Only @bicol-u.edu.ph email addresses are allowed";
    }
  } catch (e) {
    // Handle any errors that may occur during registration
    return "Registration failed: $e";
  }
}
