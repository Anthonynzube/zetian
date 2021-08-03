import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zetian/mixins/sale_helper.dart';
import 'package:zetian/models/sale/read/get_sale_response.dart';
import 'package:zetian/partials/sidemenu.dart';

class SaleDetail extends StatefulWidget {
  SalesResult saleDetails;

  SaleDetail({required this.saleDetails});

  @override
  _SaleDetailState createState() => _SaleDetailState();
}

class _SaleDetailState extends State<SaleDetail> with SaleHelper {
  @override
  void initState() {
    print(widget.saleDetails.sale.id);
    print(widget.saleDetails.sale.carRegNo);
    print(widget.saleDetails.customer.phoneNumber);
    print(widget.saleDetails.customer.firstName +
        " " +
        widget.saleDetails.customer.lastName);
    print(widget.saleDetails.service[0].name);
    print(widget.saleDetails.service[0].amount.toString());
    print(widget.saleDetails.sale.totalAmount);
    print(widget.saleDetails.sale.date);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            )),
      ),
      endDrawer: SideMenu(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 768) {
            //
            // Tablet View
            //
            return Column(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 700),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.attach_money_rounded,
                                  size: 40.0,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Sale Details',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 40,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Next Section
                Expanded(
                    child: Container(
                  // width: double.infinity,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(34))),
                  child: ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30, left: 30, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Car Registration Number',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'fkj-789-lk',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Phone Number',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '08032489911',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Customer Name',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Chibueze Nnaemeka',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Date',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '05-05-2021',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                            ),
                          ),
                          Divider(
                            height: 2.0,
                            color: Colors.black87,
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 10.0, top: 10),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Text(
                                      '1',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20,
                                        // fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    title: Text(
                                      'Normal Wash',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      'Nov 7',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    trailing: Text(
                                      '₦7000',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                  ListTile(
                                    leading: Text(
                                      '2',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20,
                                        // fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    title: Text(
                                      'Normal Wash',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      'Nov 7',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    trailing: Text(
                                      '₦7000',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                  ListTile(
                                    leading: Text(
                                      '3',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20,
                                        // fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    title: Text(
                                      'Normal Wash',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      'Nov 7',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    trailing: Text(
                                      '₦7000',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                  ListTile(
                                    leading: Text(
                                      '4',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20,
                                        // fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    title: Text(
                                      'Normal Wash',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      'Nov 7',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    trailing: Text(
                                      '₦7000',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                  Divider(
                                    height: 2.0,
                                    color: Colors.black54,
                                  ),
                                  ListTile(
                                    leading: Text(
                                      '',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20,
                                        // fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    title: Text(
                                      'Total',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    trailing: Text(
                                      '₦28000',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ))
              ],
            );
          } else {
            //
            //Mobile View
            //
            return Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.attach_money_rounded,
                                  size: 40.0,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Sale Details',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 40,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Next Section
                Expanded(
                    child: Container(
                      width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.8,
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(34))),
                  child: ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30, left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text(
                              'ID',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              widget.saleDetails.sale.id,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Car Registration Number',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              widget.saleDetails.sale.carRegNo,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Phone Number',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  widget.saleDetails.customer.phoneNumber,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Customer Name',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  widget.saleDetails.customer.firstName +
                                  " " +
                                  widget.saleDetails.customer.lastName,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Date',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  widget.saleDetails.sale.date.toString(),
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                                SizedBox(
                                  height: 15,
                                ),
                              ],
                        ),
                      ),
                      Divider(
                        height: 2.0,
                        color: Colors.black87,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 10),
                          child: Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                child: ListView.builder(
                                    itemCount:
                                        widget.saleDetails.service.length,
                                    itemBuilder: (context, index) {
                                      return ListTile(
                                        leading: Text(
                                          (index + 1).toString(),
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 20,
                                            // fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        title: Text(
                                          widget
                                              .saleDetails.service[index].name,
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        // subtitle: Text(
                                        //   widget.saleDetails.service[index].name,
                                        //   style: TextStyle(
                                        //       fontFamily: 'Montserrat',
                                        //       fontSize: 18,
                                        //       fontWeight: FontWeight.w500),
                                        // ),
                                        trailing: Text(
                                          '₦' +
                                              widget.saleDetails.service[index]
                                                  .amount
                                                  .toString(),
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      );
                                    }),
                              ),
                              // SizedBox(
                              //   height: 40,
                              // ),
                            ],
                          )),
                      Divider(
                        height: 2.0,
                        color: Colors.black87,
                      ),
                      ListTile(
                          title: Text(
                            'Total',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Text('₦' +
                              widget.saleDetails.sale.totalAmount.toString()))
                    ],
                      ),
                    ))
              ],
            );
          }
        },
      ),
    );
  }
}
