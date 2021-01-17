//
//  YoutubeView.swift
//  Calvin123
//
//  Created by User06 on 2021/1/16.
//

import SwiftUI



struct YoutubeView: View {

    

    @State private var youtubes = [Items]()
    @State private var scale: CGFloat = 1
    
    
    func fetchSongs() {

        let urlStr = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet,contentDetails,status&playlistId=PLINfq2GBhbXr1JYVHxZsi8ZzBhUdiMpE3&key=AIzaSyCD98v9SlGnP-RSUXMb_dl-2cZ5noI9XuA&maxResults=50"

        

        if let url = URL(string: urlStr) {

            

            URLSession.shared.dataTask(with: url) { (data, response , error) in

                let decoder = JSONDecoder()

                decoder.dateDecodingStrategy = .iso8601

                if let data = data{

                    do{

                        let songResults = try decoder.decode(Youtube.self, from: data)

                        youtubes = songResults.items

                        print(youtubes)

                        } catch {

                        print(error)

                    }

                }

            }.resume()

        }

        

    }

    @State private var showWebpage = false



    var body: some View {

        
        VStack{


            Text(NSLocalizedString("人物介紹", comment: "default"))
                            .fontWeight(.bold)
                            .font(.system(size:30))
                            .foregroundColor(.black)
                        Spacer()

            List(youtubes.indices, id:\.self, rowContent: { (index) in

                if youtubes.count > 0 {

                    VStack{

                        HStack{

                            YoutubeImage(url: youtubes[index].snippet.thumbnails.medium.url).frame(width: 128, height: 72)
                                .scaledToFill()
                                .clipped()
                                
                                

                            /*Link(youtubes[index].snippet.title, destination: URL(string: "https://www.youtube.com/watch?v=\(youtubes[index].contentDetails.videoId)")!)*/

                            Button(youtubes[index].snippet.title) {

                                        showWebpage = true

                                    }

                                    .sheet(isPresented: $showWebpage) {

                                        SafariView(url: URL(string: "https://www.youtube.com/watch?v=\(youtubes[index].contentDetails.videoId)")!)

                                    }

                

                        }

                

                    }

                    

                }

                

            })

            .onAppear(perform: {

                            fetchSongs()

            })

            

        }

        .padding().background(Color(red: 0.5, green: 0.3, blue: 0.9))/*.cornerRadius(20)*/

        

    }
    

}



struct YoutubeView_Previews: PreviewProvider {

    static var previews: some View {

        YoutubeView()

    }

}
