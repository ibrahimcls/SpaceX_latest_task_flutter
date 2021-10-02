import 'package:spacex_flutter/model/core.dart';
import 'package:spacex_flutter/model/links.dart';

class SpaceXTask {
  Null fairings;
  Links links;
  String staticFireDateUtc;
  int staticFireDateUnix;
  bool net;
  int window;
  String rocket;
  bool success;
  String details;
  List<String> crew;
  List<String> ships;
  List<String> capsules;
  List<String> payloads;
  String launchpad;
  int flightNumber;
  String name;
  String dateUtc;
  int dateUnix;
  String dateLocal;
  String datePrecision;
  bool upcoming;
  List<Cores> cores;
  bool autoUpdate;
  bool tbd;
  String launchLibraryId;
  String id;

  SpaceXTask(
      {this.fairings,
      this.links,
      this.staticFireDateUtc,
      this.staticFireDateUnix,
      this.net,
      this.window,
      this.rocket,
      this.success,
      this.details,
      this.crew,
      this.ships,
      this.capsules,
      this.payloads,
      this.launchpad,
      this.flightNumber,
      this.name,
      this.dateUtc,
      this.dateUnix,
      this.dateLocal,
      this.datePrecision,
      this.upcoming,
      this.cores,
      this.autoUpdate,
      this.tbd,
      this.launchLibraryId,
      this.id});

  SpaceXTask.fromJson(Map<String, dynamic> json) {
    fairings = json['fairings'];
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    staticFireDateUtc = json['static_fire_date_utc'];
    staticFireDateUnix = json['static_fire_date_unix'];
    net = json['net'];
    window = json['window'];
    rocket = json['rocket'];
    success = json['success'];
    details = json['details'];
    crew = json['crew'].cast<String>();
    ships = json['ships'].cast<String>();
    capsules = json['capsules'].cast<String>();
    payloads = json['payloads'].cast<String>();
    launchpad = json['launchpad'];
    flightNumber = json['flight_number'];
    name = json['name'];
    dateUtc = json['date_utc'];
    dateUnix = json['date_unix'];
    dateLocal = json['date_local'];
    datePrecision = json['date_precision'];
    upcoming = json['upcoming'];
    if (json['cores'] != null) {
      cores = new List<Cores>();
      json['cores'].forEach((v) {
        cores.add(new Cores.fromJson(v));
      });
    }
    autoUpdate = json['auto_update'];
    tbd = json['tbd'];
    launchLibraryId = json['launch_library_id'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fairings'] = this.fairings;
    if (this.links != null) {
      data['links'] = this.links.toJson();
    }
    data['static_fire_date_utc'] = this.staticFireDateUtc;
    data['static_fire_date_unix'] = this.staticFireDateUnix;
    data['net'] = this.net;
    data['window'] = this.window;
    data['rocket'] = this.rocket;
    data['success'] = this.success;
    data['details'] = this.details;
    data['crew'] = this.crew;
    data['ships'] = this.ships;
    data['capsules'] = this.capsules;
    data['payloads'] = this.payloads;
    data['launchpad'] = this.launchpad;
    data['flight_number'] = this.flightNumber;
    data['name'] = this.name;
    data['date_utc'] = this.dateUtc;
    data['date_unix'] = this.dateUnix;
    data['date_local'] = this.dateLocal;
    data['date_precision'] = this.datePrecision;
    data['upcoming'] = this.upcoming;
    if (this.cores != null) {
      data['cores'] = this.cores.map((v) => v.toJson()).toList();
    }
    data['auto_update'] = this.autoUpdate;
    data['tbd'] = this.tbd;
    data['launch_library_id'] = this.launchLibraryId;
    data['id'] = this.id;
    return data;
  }
}
