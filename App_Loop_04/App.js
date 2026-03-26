import React from 'react';
import {
	SafeAreaView,
	View,
	Text,
	FlatList,
	Image,
	StyleSheet,
	StatusBar,
} from 'react-native';

	// Ícones do menu superior
import ClockIcon from './assets/clock.svg';
import PlaneIcon from './assets/plane.svg';
import DigitalIcon from './assets/digital.svg';
import LampIcon from './assets/lamp.svg';
import TargetIcon from './assets/target.svg';
import ChevronIcon from './assets/bracket.svg';

	// Ícones da tab inferior
import FireIcon from './assets/fire.svg';
import MonitorIcon from './assets/monitor.svg';
import MeetIcon from './assets/meet.svg';
import MoneyIcon from './assets/money.svg';
import MenuIcon from './assets/menu.svg';

export default function App() {
	const menuOptions = [
		{ id: '1', title: 'Appointments', IconComponent: ClockIcon },
		{ id: '2', title: 'Trips', IconComponent: PlaneIcon },
		{ id: '3', title: 'Passwords', IconComponent: DigitalIcon },
		{ id: '4', title: 'Pitches', IconComponent: LampIcon },
		{ id: '5', title: 'Updates', IconComponent: TargetIcon },
	];
	
	const people = [
		{
			id: '1',
			name: 'Amy Farha',
			role: 'Vice President',
			avatar: 'https://randomuser.me/api/portraits/women/44.jpg',
		},
		{
			id: '2',
			name: 'Chris Jackson',
			role: 'Vice Chairman',
			avatar: 'https://randomuser.me/api/portraits/men/46.jpg',
		},
		{
			id: '3',
			name: 'Amanda Martin',
			role: 'CEO',
			avatar: 'https://randomuser.me/api/portraits/women/68.jpg',
		},
		{
			id: '4',
			name: 'Christy Thomas',
			role: 'Lead Developer',
			avatar: 'https://randomuser.me/api/portraits/women/65.jpg',
		},
		{
			id: '5',
			name: 'Melissa Jones',
			role: 'CTO',
			avatar: 'https://randomuser.me/api/portraits/women/43.jpg',
		},
	];
	
	const tabs = [
		{ id: '1', IconComponent: FireIcon },
		{ id: '2', IconComponent: MonitorIcon },
		{ id: '3', IconComponent: MeetIcon },
		{ id: '4', IconComponent: MoneyIcon },
		{ id: '5', IconComponent: MenuIcon, active: true },
	];
	
	const renderMenuItem = ({ item }) => {
		const Icon = item.IconComponent;
		
		return (
				<View style={styles.row}>
				<Icon width={24} height={24} style={styles.menuIcon} />
				
				<View style={styles.textContainer}>
				<Text style={styles.menuTitle}>{item.title}</Text>
				</View>
				
				<ChevronIcon width={18} height={18} style={styles.chevronIcon} />
				</View>
				);
	};
	
	const renderPersonItem = ({ item }) => (
											<View style={styles.row}>
											<Image source={{ uri: item.avatar }} style={styles.avatar} />
											
											<View style={styles.textContainer}>
											<Text style={styles.personName}>{item.name}</Text>
											<Text style={styles.personRole}>{item.role}</Text>
											</View>
											
											<ChevronIcon width={18} height={18} style={styles.chevronIcon} />
											</View>
											);
	
	return (
			<SafeAreaView style={styles.container}>
			<StatusBar barStyle="dark-content" backgroundColor="#ffffff" />
			
			<View style={styles.header}>
			<Text style={styles.headerTop}>REACT NATIVE</Text>
			<Text style={styles.headerBottom}>ELEMENTS</Text>
			</View>
			
			<View style={styles.section}>
			<FlatList
			data={menuOptions}
			keyExtractor={(item) => item.id}
			renderItem={renderMenuItem}
			scrollEnabled={false}
			/>
			</View>
			
			<View style={styles.spacer} />
			
			<View style={styles.section}>
			<FlatList
			data={people}
			keyExtractor={(item) => item.id}
			renderItem={renderPersonItem}
			scrollEnabled={false}
			/>
			</View>
			
			<View style={styles.tabBar}>
			{tabs.map((tab) => {
				const TabIcon = tab.IconComponent;
				
				return (
						<View key={tab.id} style={styles.tabItem}>
						<TabIcon
						width={25}
						height={25}
						style={tab.active ? styles.tabIconActive : styles.tabIconInactive}
						/>
						</View>
						);
			})}
			</View>
			</SafeAreaView>
			);
}

const styles = StyleSheet.create({
	container: {
		flex: 1,
		backgroundColor: '#f1f3f5',
	},
	
	header: {
		backgroundColor: '#ffffff',
		alignItems: 'center',
		justifyContent: 'center',
		paddingTop: 12,
		paddingBottom: 12,
		borderBottomWidth: 1,
		borderBottomColor: '#e3e6ea',
	},
	
	headerTop: {
		fontSize: 15,
		color: '#7a8591',
		fontWeight: '600',
		letterSpacing: 1,
	},
	
	headerBottom: {
		fontSize: 28,
		color: '#222222',
		fontWeight: 'bold',
		marginTop: -2,
	},
	
	section: {
		backgroundColor: '#ffffff',
	},
	
	spacer: {
		height: 20,
		backgroundColor: '#edf0f3',
	},
	
	row: {
		minHeight: 62,
		flexDirection: 'row',
		alignItems: 'center',
		paddingHorizontal: 14,
		borderBottomWidth: 1,
		borderBottomColor: '#eceff2',
		backgroundColor: '#ffffff',
	},
	
	menuIcon: {
		marginRight: 12,
		color: '#b7bec7',
	},
	
	textContainer: {
		flex: 1,
	},
	
	menuTitle: {
		fontSize: 18,
		color: '#666d75',
	},
	
	chevronIcon: {
		color: '#c7ccd3',
	},
	
	avatar: {
		width: 42,
		height: 42,
		borderRadius: 21,
		marginRight: 12,
	},
	
	personName: {
		fontSize: 17,
		color: '#4f5660',
	},
	
	personRole: {
		fontSize: 14,
		color: '#9ca5af',
		fontWeight: '600',
		marginTop: 2,
	},
	
	tabBar: {
		marginTop: 'auto',
		height: 58,
		backgroundColor: '#ffffff',
		borderTopWidth: 1,
		borderTopColor: '#dfe4ea',
		flexDirection: 'row',
		alignItems: 'center',
		justifyContent: 'space-around',
	},
	
	tabItem: {
		flex: 1,
		alignItems: 'center',
	},
	
	tabIconInactive: {
		color: '#7b8591',
	},
	
	tabIconActive: {
		color: '#4a8df5',
	},
});
