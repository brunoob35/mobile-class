import { StyleSheet } from 'react-native';

const styles = StyleSheet.create({
  drawerScrollContent: {
    flexGrow: 1,
    backgroundColor: '#f7fbf8',
  },
  drawerHero: {
    backgroundColor: '#1f3c34',
    borderBottomLeftRadius: 26,
    borderBottomRightRadius: 26,
    marginBottom: 12,
    padding: 22,
  },
  drawerEyebrow: {
    color: '#9dd3bd',
    fontSize: 12,
    fontWeight: '700',
    marginBottom: 8,
    textTransform: 'uppercase',
  },
  drawerTitle: {
    color: '#f3f4f6',
    fontSize: 24,
    fontWeight: '800',
    marginBottom: 8,
  },
  drawerText: {
    color: '#dce7e1',
    fontSize: 14,
    lineHeight: 20,
  },
  drawerList: {
    flex: 1,
    paddingHorizontal: 10,
    paddingTop: 6,
  },
});

export default styles;
