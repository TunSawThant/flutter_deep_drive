import 'package:contact_form/controllers/contact_form_controller.dart';
import 'package:contact_form/widgets/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactFormOne extends GetView<ContactFormController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final ContactFormController contactForm = Get.put(ContactFormController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Form'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text('Injuiry'),
            Padding(padding: EdgeInsets.all(8.0)),
            Form(
                key: _formKey,
                autovalidate: controller.autovalidte,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(style: BorderStyle.solid)),
                          labelText: 'First Name',
                          labelStyle: TextStyle(color: Colors.black),
                          hintText: 'John'),
                      validator: (v) {
                        if (v.isEmpty) {
                          return 'Please fill Name';
                        } else {
                          return null;
                        }
                      },
                    ),
                    Padding(padding: EdgeInsets.all(8.0)),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(style: BorderStyle.solid)),
                        labelText: 'Last Name',
                        labelStyle: TextStyle(color: Colors.black),
                        hintText: 'Brown',
                      ),
                      validator: (v) {
                        if (v.isEmpty) {
                          return 'Please fill Name';
                        } else {
                          return null;
                        }
                      },
                    ),
                    Padding(padding: EdgeInsets.all(8.0)),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(style: BorderStyle.solid)),
                          labelText: 'Age',
                          labelStyle: TextStyle(color: Colors.black),
                          hintText: '21'),
                      keyboardType: TextInputType.number,
                      validator: (v) {
                        if (v.isEmpty) {
                          return 'Please fill Age';
                        } else {
                          return null;
                        }
                      },
                    ),
                    Padding(padding: EdgeInsets.all(8.0)),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(style: BorderStyle.solid)),
                          labelText: 'E-mail',
                          labelStyle: TextStyle(color: Colors.black),
                          hintText: 'example@gmail.com'),
                      keyboardType: TextInputType.emailAddress,
                      validator: (v) {
                        if (v.isEmpty) {
                          return 'Please fill e-mail';
                        } else {
                          return null;
                        }
                      },
                    ),
                    Padding(padding: EdgeInsets.all(8.0)),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(style: BorderStyle.solid)),
                          labelText: 'Phone',
                          labelStyle: TextStyle(color: Colors.black),
                          hintText: '09852147563'),
                      keyboardType: TextInputType.number,
                      validator: (v) {
                        if (v.isEmpty) {
                          return 'Please fill Phone';
                        } else {
                          return null;
                        }
                      },
                    ),
                    Padding(padding: EdgeInsets.all(8.0)),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(style: BorderStyle.solid)),
                          labelText: 'Subject',
                          labelStyle: TextStyle(color: Colors.black),
                          hintText: 'type your subject'),
                      validator: (v) {
                        if (v.isEmpty) {
                          return 'Please fill Subject';
                        } else {
                          return null;
                        }
                      },
                    ),
                    Padding(padding: EdgeInsets.all(8.0)),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(style: BorderStyle.solid)),
                        labelText: 'Message',
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                      maxLength: 4,
                      maxLines: 4,
                      validator: (v) {
                        if (v.isEmpty) {
                          return 'Please fill Message';
                        } else {
                          return null;
                        }
                      },
                    )
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BtnWidget(
                  txt: 'Submit',
                  btn: submit,
                ),
                BtnWidget(
                  txt: 'Reset',
                  btn: reset,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void submit() {
    if (_formKey.currentState.validate()) {
      displayDialog();
    } else {
      contactForm.validateForm();
    }
  }

  void displayDialog() {
    Get.defaultDialog(
        title: 'Alert',
        content: Container(
          child: Text('Hello World!..'),
        ),
        actions: [
          FlatButton(
              onPressed: () {
                Get.back();
              },
              color: Colors.red,
              child: Text('Close'))
        ]);
  }

  void reset() {
    _formKey.currentState.reset();
  }
}
