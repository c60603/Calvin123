//
//  FavoriteView.swift
//  Calvin123
//
//  Created by User06 on 2021/1/16.
//

import SwiftUI

struct FavoriteView: View {
    @EnvironmentObject var favoriteViewModel: FavoriteViewModel
    @State private var show = false
//    @State private var isSearch = false
//    @State private var searchText: String = ""
    var body: some View {
        NavigationView {
            List {
                ForEach(favoriteViewModel.favorite){ (favors) in
                    NavigationLink(destination: FavoriteInsert(editFavorite: favors)) {
                        FavoriteRow(favor: favors)
                    }
                }
                .onMove { (indexSet, index) in
                    self.favoriteViewModel.favorite.move(fromOffsets: indexSet,
                                    toOffset: index)
                }
                .onDelete{ (index) in
                    self.favoriteViewModel.favorite.remove(atOffsets: index)
                }
            }
            .navigationBarTitle("List")
            .navigationBarItems(leading: EditButton().accentColor(.green), trailing: Button(action: {
                    self.show = true
                },label: {
                    Image(systemName: "calendar.badge.plus")
                        .accentColor(.purple)
                    }))
                .sheet(isPresented: $show){
                    NavigationView {
                        FavoriteInsert().environmentObject(self.favoriteViewModel) // 新增時不用修改
                    }
            }
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView().environmentObject(FavoriteViewModel())
    }
}
