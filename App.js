/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow strict-local
 */

import React from 'react';
import {
  SafeAreaView,
  StyleSheet,
  ScrollView,
  View,
  Text,
  Button,
  StatusBar,
  NativeModules,
} from 'react-native';

const ReaderManager = NativeModules.ReaderManager;

const App = () => {
  const buttonProps = {
    title: 'Open Native',
    onPress: () => {
      console.log('Native');
      const callback = (err, obj) => {
        if (err) {
          throw err;
        }
        console.log(obj);
      };
      ReaderManager.addEvent('Sample Event', 'Sample Value', callback);
    },
  };

  return (
    <>
      <StatusBar barStyle="dark-content" />
      <SafeAreaView>
        <ScrollView>
          <View>
            <Text style={styles.center}>Sample Reader</Text>
          </View>
          <Button {...buttonProps} />
        </ScrollView>
      </SafeAreaView>
    </>
  );
};

const styles = StyleSheet.create({
  center: {
    textAlign: 'center',
    fontSize: 18,
  },
});

export default App;
